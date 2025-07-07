
# asmatch/cli.py
import argparse
import os
import json
import sys
import time
from textwrap import dedent
from sqlmodel import Session
from .database import engine, create_db_and_tables
from .core import (
    add_snippet,
    find_matches,
    delete_snippet,
    update_snippet,
    reindex_database,
    get_snippet_by_checksum,
    get_db_stats,
    list_snippets,
)

def confirm_action(prompt: str) -> bool:
    """Asks the user for confirmation."""
    while True:
        response = input(f"{prompt} [y/N]: ").lower().strip()
        if response in ["y", "yes"]:
            return True
        if response in ["n", "no", ""]:
            return False

def main():
    # Ensure the database and tables are created
    create_db_and_tables()

    epilog = dedent("""\
    Examples:
      # Create a new snippet from a string
      asmatch create snippet my_func "MOV EAX, 1; RET"

      # Get a list of all snippets
      asmatch get snippets

      # Get database statistics
      asmatch db stats

      # Re-index the database
      asmatch db reindex
      
      # Find snippets similar to a query string
      asmatch find --query "MOV EAX"
    """)

    parser = argparse.ArgumentParser(
        description="A CLI for asmatch, in the style of kubectl.",
        epilog=epilog,
        formatter_class=argparse.RawTextHelpFormatter,
    )
    subparsers = parser.add_subparsers(dest="verb", required=True)

    # --- Create command ---
    parser_create = subparsers.add_parser("create", help="Create a resource.")
    create_subparsers = parser_create.add_subparsers(dest="noun", required=True)
    # create snippet
    parser_create_snippet = create_subparsers.add_parser("snippet", aliases=["snip"], help="Create a new snippet.")
    parser_create_snippet.add_argument("name", help="The name of the snippet.")
    parser_create_snippet.add_argument("code", help="The assembly code of the snippet.")
    # create from-dir
    parser_create_from_dir = create_subparsers.add_parser("from-dir", help="Bulk import snippets from a directory.")
    parser_create_from_dir.add_argument("directory", help="The directory containing .asm or .txt files.")
    parser_create_from_dir.add_argument("--json", action="store_true", help="Output results in JSON format.")

    # --- Get command ---
    parser_get = subparsers.add_parser("get", help="Get one or more resources.")
    get_subparsers = parser_get.add_subparsers(dest="noun", required=True)
    # get snippets
    parser_get_snippets = get_subparsers.add_parser("snippets", aliases=["snips"], help="Get a list of snippets.")
    parser_get_snippets.add_argument("--range", help="A range of snippets to list (e.g., 10-30).")
    parser_get_snippets.add_argument("--json", action="store_true", help="Output in JSON format.")

    # --- Describe command ---
    parser_describe = subparsers.add_parser("describe", help="Get detailed information about a resource.")
    describe_subparsers = parser_describe.add_subparsers(dest="noun", required=True)
    # describe snippet
    parser_describe_snippet = describe_subparsers.add_parser("snippet", aliases=["snip"], help="Describe a snippet by its checksum.")
    parser_describe_snippet.add_argument("checksum", help="The checksum of the snippet.")
    parser_describe_snippet.add_argument("--json", action="store_true", help="Output in JSON format.")

    # --- Delete command ---
    parser_delete = subparsers.add_parser("delete", help="Delete a resource.")
    delete_subparsers = parser_delete.add_subparsers(dest="noun", required=True)
    # delete snippet
    parser_delete_snippet = delete_subparsers.add_parser("snippet", aliases=["snip"], help="Delete a snippet by name.")
    parser_delete_snippet.add_argument("name", help="The name of the snippet to delete.")

    # --- Update command ---
    parser_update = subparsers.add_parser("update", help="Update a resource.")
    update_subparsers = parser_update.add_subparsers(dest="noun", required=True)
    # update snippet
    parser_update_snippet = update_subparsers.add_parser("snippet", aliases=["snip"], help="Update an existing snippet.")
    parser_update_snippet.add_argument("name", help="The name of the snippet to update.")
    parser_update_snippet.add_argument("code", help="The new assembly code.")

    # --- DB command ---
    parser_db = subparsers.add_parser("db", help="Manage the database.")
    db_subparsers = parser_db.add_subparsers(dest="noun", required=True)
    # db stats
    parser_db_stats = db_subparsers.add_parser("stats", help="Show database statistics.")
    parser_db_stats.add_argument("--json", action="store_true", help="Output in JSON format.")
    # db reindex
    parser_db_reindex = db_subparsers.add_parser("reindex", help="Re-calculates all MinHashes in the database.")
    parser_db_reindex.add_argument("--json", action="store_true", help="Output in JSON format.")

    # --- Find command (custom verb) ---
    parser_find = subparsers.add_parser("find", help="Find similar snippets.")
    find_group = parser_find.add_mutually_exclusive_group(required=True)
    find_group.add_argument("--query", help="The query string to search for.")
    find_group.add_argument("--file", help="Path to a file containing the query.")
    parser_find.add_argument("--top-n", type=int, default=3, help="Number of top matches to return.")
    parser_find.add_argument("--threshold", type=float, default=0.2, help="LSH threshold override (0.0-1.0, default: 0.2).")
    parser_find.add_argument("--json", action="store_true", help="Output results in JSON format.")
    parser_find.add_argument("--no-normalization", action="store_true", help="Disable token normalization for this query.")


    args = parser.parse_args()

    with Session(engine) as session:
        if args.verb == "create":
            if args.noun in ["snippet", "snip"]:
                snippet = add_snippet(session, args.name, args.code)
                if snippet:
                    print(f"Snippet '{snippet.name}' created with checksum: {snippet.checksum}")
            elif args.noun == "from-dir":
                if confirm_action(f"Are you sure you want to import all snippets from '{args.directory}'?"):
                    start_time = time.time()
                    snippets_added = 0
                    for filename in os.listdir(args.directory):
                        if filename.endswith((".asm", ".txt")):
                            name = os.path.splitext(filename)[0]
                            with open(os.path.join(args.directory, filename), 'r') as f:
                                code = f.read()
                            snippet = add_snippet(session, name, code)
                            if snippet:
                                snippets_added += 1
                    
                    end_time = time.time()
                    time_elapsed = end_time - start_time
                    
                    stats = {
                        "num_imported": snippets_added,
                        "time_elapsed": time_elapsed,
                        "avg_time_per_snippet": time_elapsed / snippets_added if snippets_added > 0 else 0,
                    }

                    if args.json:
                        print(json.dumps(stats, indent=2))
                    else:
                        print("--- Import Complete ---")
                        print(f"  Snippets imported: {stats['num_imported']}")
                        print(f"  Total time elapsed: {stats['time_elapsed']:.4f} seconds")
                        if stats['num_imported'] > 0:
                            print(f"  Average time per snippet: {stats['avg_time_per_snippet'] * 1000:.4f} ms")

        elif args.verb == "get":
            if args.noun in ["snippets", "snips"]:
                start, end = 0, 0
                if args.range:
                    try:
                        start, end = map(int, args.range.split('-'))
                    except ValueError:
                        print("Error: Invalid range format. Use start-end (e.g., 10-30).")
                        return
                
                snippets = list_snippets(session, start, end)
                if args.json:
                    print(json.dumps([{"checksum": s.checksum, "name": s.name} for s in snippets], indent=2))
                else:
                    for snippet in snippets:
                        print(f"Checksum: {snippet.checksum}, Name: {snippet.name}")
        elif args.verb == "describe":
            if args.noun in ["snippet", "snip"]:
                snippet = get_snippet_by_checksum(session, args.checksum)
                if snippet:
                    if args.json:
                        print(json.dumps({"checksum": snippet.checksum, "name": snippet.name, "code": snippet.code}, indent=2))
                    else:
                        print(f"Checksum: {snippet.checksum}")
                        print(f"Name: {snippet.name}")
                        print(f"Code:\n{snippet.code}")
                else:
                    print(f"Snippet with checksum {args.checksum} not found.")
        elif args.verb == "delete":
            if args.noun in ["snippet", "snip"]:
                if confirm_action(f"Are you sure you want to delete snippet '{args.name}'?"):
                    if delete_snippet(session, args.name):
                        print(f"Snippet '{args.name}' deleted.")
        elif args.verb == "update":
            if args.noun in ["snippet", "snip"]:
                snippet = update_snippet(session, args.name, args.code)
                if snippet:
                    print(f"Snippet '{args.name}' updated.")
        elif args.verb == "db":
            if args.noun == "stats":
                stats = get_db_stats(session)
                if args.json:
                    print(json.dumps(stats, indent=2))
                else:
                    print("--- Database Statistics ---")
                    print(f"  Number of snippets: {stats['num_snippets']}")
                    print(f"  Average snippet size: {stats['avg_snippet_size']:.2f} characters")
                    print(f"  Vocabulary size: {stats['vocabulary_size']} unique tokens")
            elif args.noun == "reindex":
                if confirm_action("Are you sure you want to re-index the entire database? This may take a while."):
                    stats = reindex_database(session)
                    if args.json:
                        print(json.dumps(stats, indent=2))
                    else:
                        print("--- Re-indexing Complete ---")
                        print(f"  Snippets re-indexed: {stats['num_reindexed']}")
                        print(f"  Total time elapsed: {stats['time_elapsed']:.4f} seconds")
                        if stats['num_reindexed'] > 0:
                            print(f"  Average time per snippet: {stats['avg_time_per_snippet'] * 1000:.4f} ms")
        elif args.verb == "find":
            if not 0.0 <= args.threshold < 0.99:
                print("Error: --threshold must be between 0.0 and 0.98.")
                sys.exit(1)

            query_string = args.query
            if args.file:
                try:
                    with open(args.file, 'r') as f:
                        query_string = f.read()
                except FileNotFoundError:
                    print(f"Error: File not found at {args.file}")
                    sys.exit(1)
            
            num_candidates, matches = find_matches(
                session, 
                query_string, 
                args.top_n, 
                args.threshold,
                not args.no_normalization
            )
            
            if args.json:
                print(json.dumps({
                    "lsh_candidates": num_candidates,
                    "matches": [{"checksum": snippet.checksum, "name": snippet.name, "score": score} for snippet, score in matches]
                }, indent=2))
            else:
                print(f"Found {num_candidates} candidates via LSH.")
                if matches:
                    print("--- Top Matches ---")
                    for snippet, score in matches:
                        print(f"  - Checksum: {snippet.checksum}, Name: {snippet.name}, Score: {score:.2f}")
                else:
                    print("No matches found after ranking.")

if __name__ == "__main__":
    main()
