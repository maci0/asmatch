"""Command line interface for the asmatch tool."""

import argparse
import json
import os
import sys
import time
import logging

from sqlmodel import Session

from .config import CONFIG_PATH, load_config
from .core import (
    add_snippet,
    compare_snippets,
    delete_snippet,
    find_matches,
    get_db_stats,
    get_snippet_by_checksum,
    list_snippets,
    reindex_database,
)
from .database import create_db_and_tables, engine

logger = logging.getLogger(__name__)


def confirm_action(prompt: str) -> bool:
    """Asks the user for confirmation."""
    while True:
        response = input(f"{prompt} [y/N]: ").lower().strip()
        if response in ["y", "yes"]:
            return True
        if response in ["n", "no", ""]:
            return False


def main():
    """Entry point for the asmatch command line interface."""
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    # Load configuration
    config = load_config()

    # Ensure the database and tables are created
    create_db_and_tables()

    parser = argparse.ArgumentParser(
        description="A CLI for finding similar assembly code snippets.",
        formatter_class=argparse.RawTextHelpFormatter,
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    # --- Add command ---
    parser_add = subparsers.add_parser(
        "add", help="Add a new snippet or an alias to existing code."
    )
    parser_add.add_argument("name", help="The name or alias for the snippet.")
    parser_add.add_argument("code", help="The assembly code of the snippet.")

    # --- Import command ---
    parser_import = subparsers.add_parser(
        "import", help="Bulk import snippets from a directory."
    )
    parser_import.add_argument(
        "directory", help="The directory containing .asm or .txt files."
    )
    parser_import.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )

    # --- List command ---
    parser_list = subparsers.add_parser(
        "list", aliases=["ls"], help="List all snippets."
    )
    parser_list.add_argument(
        "--range", help="A range of snippets to list (e.g., 10-30)."
    )
    parser_list.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )

    # --- Show command ---
    parser_show = subparsers.add_parser(
        "show", help="Show detailed information for a specific snippet."
    )
    parser_show.add_argument("checksum", help="The checksum of the snippet.")
    parser_show.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )

    # --- Remove command ---
    parser_rm = subparsers.add_parser(
        "rm",
        aliases=["del"],
        help="Remove a snippet name. If it's the last name, the snippet is deleted.",
    )
    parser_rm.add_argument("name", help="The name of the snippet to remove.")

    # --- Find command ---
    parser_find = subparsers.add_parser("find", help="Find similar snippets.")
    find_group = parser_find.add_mutually_exclusive_group(required=True)
    find_group.add_argument("--query", help="The query string to search for.")
    find_group.add_argument("--file", help="Path to a file containing the query.")
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

    # --- Stats command ---
    parser_stats = subparsers.add_parser("stats", help="Show database statistics.")
    parser_stats.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )

    # --- Reindex command ---
    parser_reindex = subparsers.add_parser(
        "reindex", help="Re-calculates all MinHashes in the database."
    )
    parser_reindex.add_argument(
        "--json", action="store_true", help="Output in JSON format."
    )

    # --- Config command ---
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

    # --- Compare command ---
    parser_compare = subparsers.add_parser(
        "compare", help="Compare two snippets directly."
    )
    parser_compare.add_argument("checksum1", help="The checksum of the first snippet.")
    parser_compare.add_argument("checksum2", help="The checksum of the second snippet.")
    parser_compare.add_argument(
        "--json", action="store_true", help="Output results in JSON format."
    )

    args = parser.parse_args()

    with Session(engine) as session:
        if args.command == "add":
            snippet = add_snippet(session, args.name, args.code)
            if snippet:
                logger.info(
                    "Snippet with checksum %s now has names: %s",
                    snippet.checksum,
                    snippet.name_list,
                )
        elif args.command == "import":
            if confirm_action(
                f"Are you sure you want to import all snippets from '{args.directory}'?"
            ):
                start_time = time.time()
                snippets_added = 0
                for filename in os.listdir(args.directory):
                    if filename.endswith((".asm", ".txt")):
                        name = os.path.splitext(filename)[0]
                        with open(
                            os.path.join(args.directory, filename),
                            "r",
                            encoding="utf-8",
                        ) as f:
                            code = f.read()
                        snippet = add_snippet(session, name, code, quiet=True)
                        if snippet:
                            snippets_added += 1

                end_time = time.time()
                time_elapsed = end_time - start_time

                stats = {
                    "num_imported": snippets_added,
                    "time_elapsed": time_elapsed,
                    "avg_time_per_snippet": time_elapsed / snippets_added
                    if snippets_added > 0
                    else 0,
                }

                if args.json:
                    logger.info(json.dumps(stats, indent=2))
                else:
                    logger.info("--- Import Complete ---")
                    logger.info("  Snippets processed: %s", stats["num_imported"])
                    logger.info(
                        "  Total time elapsed: %.4f seconds",
                        stats["time_elapsed"],
                    )
                    if stats["num_imported"] > 0:
                        logger.info(
                            "  Average time per snippet: %.4f ms",
                            stats["avg_time_per_snippet"] * 1000,
                        )
        elif args.command in ["list", "ls"]:
            start, end = 0, 0
            if args.range:
                try:
                    start, end = map(int, args.range.split("-"))
                except ValueError:
                    logger.error("Error: Invalid range format. Use start-end (e.g., 10-30).")
                    return

            snippets = list_snippets(session, start, end)
            if args.json:
                logger.info(
                    json.dumps(
                        [
                            {"checksum": s.checksum, "names": s.name_list}
                            for s in snippets
                        ],
                        indent=2,
                    )
                )
            else:
                for snippet in snippets:
                    logger.info("Checksum: %s, Names: %s", snippet.checksum, snippet.name_list)
        elif args.command == "show":
            snippet = get_snippet_by_checksum(session, args.checksum)
            if snippet:
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
            else:
                logger.error("Snippet with checksum %s not found.", args.checksum)
        elif args.command in ["rm", "del"]:
            if confirm_action(
                f"Are you sure you want to delete the name '{args.name}'?"
            ):
                delete_snippet(session, args.name)
        elif args.command == "stats":
            stats = get_db_stats(session)
            if args.json:
                logger.info(json.dumps(stats, indent=2))
            else:
                logger.info("--- Database Statistics ---")
                logger.info("  Number of snippets: %s", stats["num_snippets"])
                logger.info(
                    "  Average snippet size: %.2f characters",
                    stats["avg_snippet_size"],
                )
                logger.info(
                    "  Vocabulary size: %s unique tokens",
                    stats["vocabulary_size"],
                )
                logger.info(
                    "  Average in-dataset similarity: %.2f",
                    stats["avg_similarity"],
                )
        elif args.command == "reindex":
            if confirm_action(
                "Are you sure you want to re-index the entire database? This may take a while."
            ):
                stats = reindex_database(session)
                if args.json:
                    logger.info(json.dumps(stats, indent=2))
                else:
                    logger.info("--- Re-indexing Complete ---")
                    logger.info("  Snippets re-indexed: %s", stats["num_reindexed"])
                    logger.info(
                        "  Total time elapsed: %.4f seconds",
                        stats["time_elapsed"],
                    )
                    if stats["num_reindexed"] > 0:
                        logger.info(
                            "  Average time per snippet: %.4f ms",
                            stats["avg_time_per_snippet"] * 1000,
                        )
        elif args.command == "find":
            if not 0.0 <= args.threshold < 0.99:
                logger.error("Error: --threshold must be between 0.0 and 0.98.")
                sys.exit(1)

            query_string = args.query
            if args.file:
                try:
                    with open(args.file, "r", encoding="utf-8") as f:
                        query_string = f.read()
                except FileNotFoundError:
                    logger.error("Error: File not found at %s", args.file)
                    sys.exit(1)

            num_candidates, matches = find_matches(
                session,
                query_string,
                args.top_n,
                args.threshold,
                not args.no_normalization,
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
        elif args.command == "config":
            if args.config_command == "path":
                logger.info(CONFIG_PATH)
            elif args.config_command == "list":
                for key, value in config.items():
                    logger.info("%s = %s", key, value)
            elif args.config_command == "set":
                # This is a simplified implementation. A real one would be more robust.
                config[args.key] = args.value
                if not os.path.exists(os.path.dirname(CONFIG_PATH)):
                    os.makedirs(os.path.dirname(CONFIG_PATH))
                with open(CONFIG_PATH, "w", encoding="utf-8") as f:
                    # A more robust implementation would use a TOML library to write
                    f.write(f"{args.key} = {args.value}\n")
                logger.info("Set %s to %s", args.key, args.value)
        elif args.command == "compare":
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
                logger.info("Snippet 1: %s (%s...)", s1["names"], s1["checksum"][:12])
                logger.info("Snippet 2: %s (%s...)", s2["names"], s2["checksum"][:12])
                logger.info("\n--- Similarity Metrics ---")
                logger.info(
                    "  Jaccard Similarity (Structure): %.2f",
                    comp["jaccard_similarity"],
                )
                logger.info(
                    "  Levenshtein Score (Code):       %.2f",
                    comp["levenshtein_score"],
                )
                logger.info(
                    "  Shared Normalized Tokens:       %s",
                    comp["shared_normalized_tokens"],
                )


if __name__ == "__main__":
    main()
