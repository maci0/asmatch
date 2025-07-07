"""Command line interface for the asmatch tool."""

import argparse
import glob
import json
import logging
import os
import sys
import time

from sqlmodel import Session

from .config import CONFIG_PATH, load_config, update_config
from .database import create_db_and_tables, engine

from .core import (
    add_snippet,
    compare_snippets,
    delete_snippet,
    export_snippets,
    find_matches,
    get_db_stats,
    get_snippet_by_checksum,
    list_snippets,
    reindex_database,
    clean_database_and_cache,
)

logger = logging.getLogger(__name__)


def confirm_action(prompt: str) -> bool:
    """Asks the user for confirmation."""
    while True:
        response = input(f"{prompt} [y/N]: ").lower().strip()
        if response in ["y", "yes"]:
            return True
        if response in ["n", "no", ""]:
            return False


def setup_logging(args: argparse.Namespace) -> None:
    """Configure logging level based on ``args``."""
    log_level = logging.INFO
    if getattr(args, "quiet", False):
        log_level = logging.WARNING
    elif getattr(args, "verbose", False):
        log_level = logging.DEBUG

    logging.basicConfig(level=log_level, stream=sys.stdout)


def cmd_add(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``add`` command."""
    snippet = add_snippet(session, args.name, args.code)
    if snippet:
        logger.info(
            "Snippet with checksum %s now has names: %s",
            snippet.checksum,
            snippet.name_list,
        )


def cmd_export(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``export`` command."""
    if not args.force and not confirm_action(
        f"Are you sure you want to export all snippets to '{args.directory}'?"
    ):
        return

    stats = export_snippets(session, args.directory)

    if args.json:
        logger.info(json.dumps(stats, indent=2))
    else:
        logger.info("--- Export Complete ---")
        logger.info("  Snippets exported: %s", stats["num_exported"])
        logger.info("  Total time elapsed: %.4f seconds", stats["time_elapsed"])
        if stats["num_exported"] > 0:
            logger.info(
                "  Average time per snippet: %.4f ms",
                stats["avg_time_per_snippet"] * 1000,
            )


def cmd_import(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``import`` command."""
    if not args.force and not confirm_action(
        f"Are you sure you want to import all snippets from '{args.directory}'?"
    ):
        return

    start_time = time.time()
    snippets_added = 0

    file_paths = glob.glob(os.path.join(args.directory, "**", "*.asm"), recursive=True)
    file_paths += glob.glob(os.path.join(args.directory, "**", "*.txt"), recursive=True)

    for file_path in file_paths:
        name = os.path.splitext(os.path.basename(file_path))[0]
        with open(file_path, "r", encoding="utf-8") as f:
            code = f.read()
        snippet = add_snippet(session, name, code, quiet=True)
        if snippet:
            snippets_added += 1

    end_time = time.time()
    time_elapsed = end_time - start_time
    stats = {
        "num_imported": snippets_added,
        "time_elapsed": time_elapsed,
        "avg_time_per_snippet": (
            time_elapsed / snippets_added if snippets_added > 0 else 0
        ),
    }

    if args.json:
        logger.info(json.dumps(stats, indent=2))
    else:
        logger.info("--- Import Complete ---")
        logger.info("  Snippets processed: %s", stats["num_imported"])
        logger.info("  Total time elapsed: %.4f seconds", stats["time_elapsed"])
        if stats["num_imported"] > 0:
            logger.info(
                "  Average time per snippet: %.4f ms",
                stats["avg_time_per_snippet"] * 1000,
            )


def cmd_list(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``list`` command."""
    start, end = 0, 0
    if args.range:
        parts = args.range.split("-")
        if len(parts) != 2 or not all(part.isdigit() for part in parts):
            logger.error("Error: Invalid range format. Use start-end (e.g., 10-30).")
            return
        start, end = map(int, parts)

    snippets = list_snippets(session, start, end)
    if args.json:
        logger.info(
            json.dumps(
                [{"checksum": s.checksum, "names": s.name_list} for s in snippets],
                indent=2,
            )
        )
    else:
        for snippet in snippets:
            logger.info("Checksum: %s, Names: %s", snippet.checksum, snippet.name_list)


def cmd_show(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``show`` command."""
    snippet = get_snippet_by_checksum(session, args.checksum)
    if not snippet:
        logger.error("Snippet with checksum %s not found.", args.checksum)
        return

    if args.json:
        logger.info(
            json.dumps(
                {
                    "checksum": snippet.checksum,
                    "names": snippet.name_list,
                    "code": snippet.code,
                },
                indent=2,
            )
        )
    else:
        logger.info("Checksum: %s", snippet.checksum)
        logger.info("Names: %s", snippet.name_list)
        logger.info("Code:\n%s", snippet.code)


def cmd_rm(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``rm`` command."""
    if confirm_action(f"Are you sure you want to delete the name '{args.name}'?"):
        delete_snippet(session, args.name)


def cmd_stats(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``stats`` command."""
    stats = get_db_stats(session)
    if args.json:
        logger.info(json.dumps(stats, indent=2))
    else:
        logger.info("--- Database Statistics ---")
        logger.info("  Number of snippets: %s", stats["num_snippets"])
        logger.info(
            "  Average snippet size: %.2f characters", stats["avg_snippet_size"]
        )
        logger.info("  Vocabulary size: %s unique tokens", stats["vocabulary_size"])
        logger.info("  Average in-dataset similarity: %.2f", stats["avg_similarity"])


def cmd_reindex(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``reindex`` command."""
    if not confirm_action(
        "Are you sure you want to re-index the entire database? This may take a while."
    ):
        return

    stats = reindex_database(session)
    if args.json:
        logger.info(json.dumps(stats, indent=2))
    else:
        logger.info("--- Re-indexing Complete ---")
        logger.info("  Snippets re-indexed: %s", stats["num_reindexed"])
        logger.info("  Total time elapsed: %.4f seconds", stats["time_elapsed"])
        if stats["num_reindexed"] > 0:
            logger.info(
                "  Average time per snippet: %.4f ms",
                stats["avg_time_per_snippet"] * 1000,
            )


def cmd_find(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``find`` command."""
    if not 0.0 <= args.threshold < 0.99:
        logger.error("Error: --threshold must be between 0.0 and 0.98.")
        sys.exit(1)

    query_string = None
    if args.query:
        query_string = args.query
    elif args.file:
        query_string = args.file.read()

    if not query_string:
        logger.error("Error: No query provided. Use --query, --file, or stdin.")
        sys.exit(1)

    num_candidates, matches = find_matches(
        session, query_string, args.top_n, args.threshold, not args.no_normalization
    )

    if args.json:
        logger.info(
            json.dumps(
                {
                    "lsh_candidates": num_candidates,
                    "matches": [
                        {
                            "checksum": snippet.checksum,
                            "names": snippet.name_list,
                            "score": score,
                        }
                        for snippet, score in matches
                    ],
                },
                indent=2,
            )
        )
    else:
        logger.info("Found %s candidates via LSH.", num_candidates)
        if matches:
            logger.info("--- Top Matches ---")
            for snippet, score in matches:
                logger.info(
                    "  - Checksum: %s, Names: %s, Score: %.2f",
                    snippet.checksum,
                    snippet.name_list,
                    score,
                )
        else:
            logger.info("No matches found after ranking.")


def cmd_config(args: argparse.Namespace, _session: Session, config: dict) -> None:
    """Handle the ``config`` command."""
    if args.config_command == "path":
        logger.info(CONFIG_PATH)
    elif args.config_command == "list":
        for key, value in config.items():
            logger.info("%s = %s", key, value)
    elif args.config_command == "set":
        if args.key == "lsh_threshold":
            value = float(args.value)
        else:
            value = int(args.value)

        new_config = update_config(args.key, value)
        logger.info("Set %s to %s", args.key, value)
        config.update(new_config)


def cmd_compare(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``compare`` command."""
    comparison = compare_snippets(session, args.checksum1, args.checksum2)
    if not comparison:
        logger.error("Error: One or both snippets could not be found.")
        sys.exit(1)

    if args.json:
        logger.info(json.dumps(comparison, indent=2))
    else:
        s1 = comparison["snippet1"]
        s2 = comparison["snippet2"]
        comp = comparison["comparison"]

        logger.info("--- Snippet Comparison ---")
        logger.info(
            "\033[1mSnippet 1:\033[0m %s (%s...)", s1["names"], s1["checksum"][:12]
        )
        logger.info(
            "\033[1mSnippet 2:\033[0m %s (%s...)", s2["names"], s2["checksum"][:12]
        )
        logger.info("\n--- Similarity Metrics ---")
        logger.info(
            "  \033[92mJaccard Similarity (Structure): %.2f\033[0m",
            comp["jaccard_similarity"],
        )
        logger.info(
            "  \033[93mLevenshtein Score (Code):       %.2f\033[0m",
            comp["levenshtein_score"],
        )
        logger.info(
            "  \033[94mShared Normalized Tokens:       %s\033[0m",
            comp["shared_normalized_tokens"],
        )


def cmd_clean(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``clean`` command."""
    stats = clean_database_and_cache(session)
    if args.json:
        logger.info(json.dumps(stats, indent=2))
    else:
        logger.info("--- Database and Cache Cleaned ---")
        logger.info("  Cache files removed: %s", stats["num_cleaned"])
        if stats.get("vacuum_success"):
            logger.info("  Database vacuumed successfully.")
        logger.info("  Total time elapsed: %.4f seconds", stats["time_elapsed"])

def add_clean_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``clean`` subparser to ``subparsers``."""
    parser_clean = subparsers.add_parser(
        "clean", help="Clean the LSH cache and vacuum the database."
    )
    parser_clean.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_clean.set_defaults(func=cmd_clean)

def add_config_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``config`` subparser to ``subparsers``."""
    parser_config = subparsers.add_parser("config", help="Manage user configuration.")
    config_subparsers = parser_config.add_subparsers(
        dest="config_command", required=True
    )
    config_subparsers.add_parser("path", help="Show the path to the config file.")
    config_subparsers.add_parser("list", help="List current settings.")
    parser_config_set = config_subparsers.add_parser(
        "set", help="Set a configuration value."
    )
    parser_config_set.add_argument(
        "key", choices=["lsh_threshold", "top_n"], help="The configuration key to set."
    )
    parser_config_set.add_argument("value", help="The value to set.")
    parser_config.set_defaults(func=cmd_config)


def add_add_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``add`` subparser to ``subparsers``."""
    parser_add = subparsers.add_parser(
        "add", help="Add a new snippet or an alias to existing code."
    )
    parser_add.add_argument("name", help="The name or alias for the snippet.")
    parser_add.add_argument("code", help="The assembly code of the snippet.")
    parser_add.set_defaults(func=cmd_add)


def add_import_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``import`` subparser to ``subparsers``."""
    parser_import = subparsers.add_parser(
        "import", help="Bulk import snippets from a directory."
    )
    parser_import.add_argument(
        "directory", help="The directory containing .asm or .txt files."
    )
    parser_import.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_import.add_argument(
        "--force", action="store_true", help="Skip confirmation prompts."
    )
    parser_import.set_defaults(func=cmd_import)


def add_export_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``export`` subparser to ``subparsers``."""
    parser_export = subparsers.add_parser(
        "export", help="Export all snippets to a directory."
    )
    parser_export.add_argument("directory", help="The directory to export snippets to.")
    parser_export.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_export.add_argument(
        "--force", action="store_true", help="Skip confirmation prompts."
    )
    parser_export.set_defaults(func=cmd_export)


def add_list_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``list`` subparser to ``subparsers``."""
    parser_list = subparsers.add_parser(
        "list", aliases=["ls"], help="List all snippets."
    )
    parser_list.add_argument(
        "--range", help="A range of snippets to list (e.g., 10-30)."
    )
    parser_list.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )
    parser_list.set_defaults(func=cmd_list)


def add_show_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``show`` subparser to ``subparsers``."""
    parser_show = subparsers.add_parser(
        "show", help="Show detailed information for a specific snippet."
    )
    parser_show.add_argument("checksum", help="The checksum of the snippet.")
    parser_show.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )
    parser_show.set_defaults(func=cmd_show)


def add_rm_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``rm`` subparser to ``subparsers``."""
    parser_rm = subparsers.add_parser(
        "rm",
        aliases=["del"],
        help="Remove a snippet name. If it's the last name, the snippet is deleted.",
    )
    parser_rm.add_argument("name", help="The name of the snippet to remove.")
    parser_rm.set_defaults(func=cmd_rm)


def add_stats_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``stats`` subparser to ``subparsers``."""
    parser_stats = subparsers.add_parser("stats", help="Show database statistics.")
    parser_stats.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )
    parser_stats.set_defaults(func=cmd_stats)


def add_reindex_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``reindex`` subparser to ``subparsers``."""
    parser_reindex = subparsers.add_parser(
        "reindex", help="Re-calculates all MinHashes in the database."
    )
    parser_reindex.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )
    parser_reindex.set_defaults(func=cmd_reindex)


def add_compare_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``compare`` subparser to ``subparsers``."""
    parser_compare = subparsers.add_parser(
        "compare", help="Compare two snippets directly."
    )
    parser_compare.add_argument("checksum1", help="The checksum of the first snippet.")
    parser_compare.add_argument("checksum2", help="The checksum of the second snippet.")
    parser_compare.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_compare.set_defaults(func=cmd_compare)


def add_find_subparser(subparsers: argparse._SubParsersAction, config: dict) -> None:
    """Add the ``find`` subparser to ``subparsers``."""
    parser_find = subparsers.add_parser("find", help="Find similar snippets.")
    find_group = parser_find.add_mutually_exclusive_group()
    find_group.add_argument("--query", help="The query string to search for.")
    find_group.add_argument(
        "--file",
        type=argparse.FileType("r", encoding="utf-8"),
        help="Path to a file containing the query. Use '-' for stdin.",
    )
    parser_find.add_argument(
        "--top-n",
        type=int,
        default=config.get("top_n"),
        help=f"Number of top matches to return (default: {config.get('top_n')}).",
    )
    parser_find.add_argument(
        "--threshold",
        type=float,
        default=config.get("lsh_threshold"),
        help=f"LSH threshold override (0.0-1.0, default: {config.get('lsh_threshold')}).",
    )
    parser_find.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_find.add_argument(
        "--no-normalization",
        action="store_true",
        help="Disable token normalization for this query.",
    )
    parser_find.set_defaults(func=cmd_find)


def get_parser(config: dict) -> argparse.ArgumentParser:
    """Return the top-level argument parser."""
    parser = argparse.ArgumentParser(
        description="A CLI for finding similar assembly code snippets.",
        formatter_class=argparse.RawTextHelpFormatter,
    )
    verbosity_group = parser.add_mutually_exclusive_group()
    verbosity_group.add_argument(
        "-q", "--quiet", action="store_true", help="Suppress informational output."
    )
    verbosity_group.add_argument(
        "-v", "--verbose", action="store_true", help="Increase output verbosity."
    )

    subparsers = parser.add_subparsers(dest="command", required=True)

    # Add subparsers for each command
    add_add_subparser(subparsers)
    add_import_subparser(subparsers)
    add_export_subparser(subparsers)
    add_list_subparser(subparsers)
    add_show_subparser(subparsers)
    add_rm_subparser(subparsers)
    add_find_subparser(subparsers, config)
    add_stats_subparser(subparsers)
    add_reindex_subparser(subparsers)
    add_config_subparser(subparsers)
    add_compare_subparser(subparsers)
    add_clean_subparser(subparsers)


    return parser


def main() -> None:
    """Entry point for the asmatch command line interface."""
    config = load_config()
    create_db_and_tables()
    parser = get_parser(config)
    args = parser.parse_args()
    setup_logging(args)
    logger.debug("Running command: %s", args.command)

    with Session(engine) as session:
        args.func(args, session, config)


if __name__ == "__main__":
    main()
