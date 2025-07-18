"""Command line interface for the asmatch tool."""

import argparse
import glob
import json
import logging
import os
import sys
import time

from sqlmodel import Session

from .config import (
    CONFIG_PATH,
    DEFAULTS,
    load_config,
    remove_config_key,
    update_config,
)
from .core import (
    db_clean,
    db_reindex,
    db_stats,
    snippet_add,
    snippet_compare,
    snippet_delete,
    snippet_export,
    snippet_find_matches,
    snippet_get,
    snippet_list,
    snippet_name_add,
    snippet_name_remove,
)
from .database import db_create, engine


class CLIError(Exception):
    """Custom exception for CLI-related errors."""


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
    snippet = snippet_add(session, args.name, args.code)
    if snippet:
        if args.json:
            if not args.quiet:
                logger.info(
                    json.dumps(
                        {
                            "checksum": snippet.checksum,
                            "names": snippet.name_list,
                        },
                        indent=2,
                    )
                )
        elif not args.quiet:
            logger.info(
                "Snippet with checksum %s now has names: %s",
                snippet.checksum,
                snippet.name_list,
            )
    elif args.json:
        if not args.quiet:
            logger.info(json.dumps({"error": "Failed to add snippet."}, indent=2))


def cmd_export(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``export`` command."""
    if not args.force and not confirm_action(
        f"Are you sure you want to export all snippets to '{args.directory}'?"
    ):
        return

    stats = snippet_export(session, args.directory)

    if args.json:
        if not args.quiet:
            logger.info(json.dumps(stats, indent=2))
    elif not args.quiet:
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
        snippet = snippet_add(session, name, code)
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
        if not args.quiet:
            logger.info(json.dumps(stats, indent=2))
    elif not args.quiet:
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

    snippets = snippet_list(session, start, end)
    if args.json:
        if not args.quiet:
            logger.info(
                json.dumps(
                    [{"checksum": s.checksum, "names": s.name_list} for s in snippets],
                    indent=2,
                )
            )
    elif not args.quiet:
        for snippet in snippets:
            logger.info("Checksum: %s, Names: %s", snippet.checksum, snippet.name_list)


def cmd_show(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``show`` command."""
    snippet = snippet_get(session, args.checksum)
    if not snippet:
        logger.error("Snippet with checksum %s not found.", args.checksum)
        return

    if args.json:
        if not args.quiet:
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
    elif not args.quiet:
        logger.info("Checksum: %s", snippet.checksum)
        logger.info("Names: %s", snippet.name_list)
        logger.info("Code:\n%s", snippet.code)


def cmd_rm(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``rm`` command."""
    if confirm_action(
        f"Are you sure you want to delete the snippet with checksum '{args.checksum}'?"
    ):
        if not snippet_delete(session, args.checksum, quiet=args.quiet):
            raise CLIError(f"Snippet with checksum '{args.checksum}' not found.")


def cmd_stats(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``stats`` command."""
    stats = db_stats(session)
    if args.json:
        if not args.quiet:
            logger.info(json.dumps(stats, indent=2))
    elif not args.quiet:
        logger.info("--- Database Statistics ---")
        logger.info("  Number of snippets: %s", stats["num_snippets"])
        logger.info(
            "  Average snippet size: %.2f characters", stats["avg_snippet_size"]
        )
        logger.info("  Vocabulary size: %s unique tokens", stats["vocabulary_size"])
        logger.info(
            "  Average Jaccard similarity (sample): %.2f",
            stats["avg_jaccard_similarity"],
        )


def cmd_reindex(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``reindex`` command."""
    if not confirm_action(
        "Are you sure you want to re-index the entire database? This may take a while."
    ):
        return

    stats = db_reindex(session)
    if args.json:
        if not args.quiet:
            logger.info(json.dumps(stats, indent=2))
    elif not args.quiet:
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
        raise CLIError("--threshold must be between 0.0 and 0.98.")

    query_string = None
    if args.query:
        query_string = args.query
    elif args.file:
        query_string = args.file.read()

    if not query_string:
        raise CLIError("No query provided. Use --query, --file, or stdin.")

    num_candidates, matches = snippet_find_matches(
        session, query_string, args.top_n, args.threshold, not args.no_normalization
    )

    if args.json:
        if not args.quiet:
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
    elif not args.quiet:
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
        print(CONFIG_PATH)
    elif args.config_command == "list":
        full_config = load_config()
        for key, value in full_config.items():
            print(f"{key} = {value}")
    elif args.config_command == "get":
        value = load_config().get(args.key)
        print(value)
    elif args.config_command == "set":
        if args.key not in DEFAULTS:
            print(f"Invalid configuration key: '{args.key}'", file=sys.stderr)
            sys.exit(1)
        if args.key == "lsh_threshold":
            value = float(args.value)
        else:
            value = int(args.value)
        new_config = update_config(args.key, value)
        logger.info("Set %s to %s", args.key, new_config[args.key])
        config.update(new_config)
    elif args.config_command == "unset":
        new_config = remove_config_key(args.key)
        logger.info("Unset %s, returning to default.", args.key)
        config.clear()
        config.update(new_config)


def cmd_compare(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``compare`` command."""
    comparison = snippet_compare(session, args.checksum1, args.checksum2)
    if not comparison:
        raise CLIError("One or both snippets could not be found.")

    if args.json:
        if not args.quiet:
            logger.info(json.dumps(comparison, indent=2))
        return

    if not args.quiet:
        s1 = comparison["snippet1"]
        s2 = comparison["snippet2"]
        comp = comparison["comparison"]

        def format_output(label: str, value: str, color: str = "") -> str:
            if args.no_color or not color:
                return f"{label}{value}"
            return f"\033[{color}m{label}{value}\033[0m"

        logger.info("--- Snippet Comparison ---")
        logger.info(
            format_output(
                "Snippet 1: ", f"{s1['names']} ({s1['checksum'][:12]}...)", "1"
            )
        )
        logger.info(
            format_output(
                "Snippet 2: ", f"{s2['names']} ({s2['checksum'][:12]}...)", "1"
            )
        )

        logger.info("\n--- Similarity Metrics ---")
        logger.info(
            format_output(
                "  Jaccard Similarity (Structure): ",
                f"{comp['jaccard_similarity']:.2f}",
                "92",
            )
        )
        logger.info(
            format_output(
                "  Levenshtein Score (Code):       ",
                f"{comp['levenshtein_score']:.2f}",
                "93",
            )
        )
        logger.info(
            format_output(
                "  Shared Normalized Tokens:       ",
                str(comp["shared_normalized_tokens"]),
                "94",
            )
        )


def cmd_clean(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``clean`` command."""
    stats = db_clean(session)
    if args.json:
        if not args.quiet:
            logger.info(json.dumps(stats, indent=2))
    elif not args.quiet:
        logger.info("--- Database and Cache Cleaned ---")
        if stats.get("vacuum_success"):
            logger.info("  Database vacuumed successfully.")
        logger.info("  Cache invalidated.")
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


def cmd_name_add(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``name add`` command."""
    snippet = snippet_name_add(session, args.checksum, args.name, quiet=args.quiet)
    if snippet:
        if args.json:
            if not args.quiet:
                logger.info(
                    json.dumps(
                        {
                            "checksum": snippet.checksum,
                            "names": snippet.name_list,
                        },
                        indent=2,
                    )
                )
    elif args.json:
        if not args.quiet:
            logger.info(
                json.dumps({"error": "Failed to add name to snippet."}, indent=2)
            )


def cmd_name_remove(args: argparse.Namespace, session: Session, _config: dict) -> None:
    """Handle the ``name remove`` command."""
    snippet = snippet_name_remove(session, args.checksum, args.name, quiet=args.quiet)
    if snippet:
        if args.json:
            if not args.quiet:
                logger.info(
                    json.dumps(
                        {
                            "checksum": snippet.checksum,
                            "names": snippet.name_list,
                        },
                        indent=2,
                    )
                )
    elif args.json:
        if not args.quiet:
            logger.info(
                json.dumps({"error": "Failed to remove name from snippet."}, indent=2)
            )


def add_name_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``name`` subparser to ``subparsers``."""
    parser_name = subparsers.add_parser("name", help="Manage snippet names.")
    name_subparsers = parser_name.add_subparsers(dest="name_command", required=True)

    # Add name subparser
    parser_name_add = name_subparsers.add_parser(
        "add", help="Add a new name to a snippet."
    )
    parser_name_add.add_argument("checksum", help="The checksum of the snippet.")
    parser_name_add.add_argument("name", help="The new name for the snippet.")
    parser_name_add.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_name_add.set_defaults(func=cmd_name_add)

    # Remove name subparser
    parser_name_remove = name_subparsers.add_parser(
        "remove", help="Remove a name from a snippet."
    )
    parser_name_remove.add_argument("checksum", help="The checksum of the snippet.")
    parser_name_remove.add_argument("name", help="The name to remove.")
    parser_name_remove.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
    parser_name_remove.set_defaults(func=cmd_name_remove)


def add_config_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``config`` subparser to ``subparsers``."""
    parser_config = subparsers.add_parser("config", help="Manage user configuration.")
    config_subparsers = parser_config.add_subparsers(
        dest="config_command", required=True
    )
    config_subparsers.add_parser("path", help="Show the path to the config file.")
    config_subparsers.add_parser("list", help="List current settings.")

    parser_config_get = config_subparsers.add_parser(
        "get", help="Get a configuration value."
    )
    parser_config_get.add_argument("key", help="The configuration key to get.")

    parser_config_set = config_subparsers.add_parser(
        "set", help="Set a configuration value."
    )
    parser_config_set.add_argument("key", help="The configuration key to set.")
    parser_config_set.add_argument("value", help="The value to set.")

    parser_config_unset = config_subparsers.add_parser(
        "unset", help="Unset a configuration value."
    )
    parser_config_unset.add_argument("key", help="The configuration key to unset.")

    parser_config.set_defaults(func=cmd_config)


def add_add_subparser(subparsers: argparse._SubParsersAction) -> None:
    """Add the ``add`` subparser to ``subparsers``."""
    parser_add = subparsers.add_parser(
        "add", help="Add a new snippet or an alias to existing code."
    )
    parser_add.add_argument("name", help="The name or alias for the snippet.")
    parser_add.add_argument("code", help="The assembly code of the snippet.")
    parser_add.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )
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
        help="Remove a snippet by its checksum.",
    )
    parser_rm.add_argument("checksum", help="The checksum of the snippet to remove.")
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
    parser.add_argument(
        "--no-color", action="store_true", help="Disable colored output."
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
    add_name_subparser(subparsers)

    return parser


def main() -> None:
    """Entry point for the asmatch command line interface."""
    config = load_config()
    db_create()
    parser = get_parser(config)
    args = parser.parse_args()
    setup_logging(args)
    logger.debug("Running command: %s", args.command)
    try:
        with Session(engine) as session:
            args.func(args, session, config)
    except CLIError as e:
        logger.error("Error: %s", e)
        sys.exit(1)


if __name__ == "__main__":
    main()
