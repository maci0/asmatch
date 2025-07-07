"""Integration tests for the asmatch CLI."""

import os
import random
import shlex
import subprocess
import unittest

from sqlmodel import Session, SQLModel, create_engine

from asmatch.core import add_snippet
from asmatch.models import Snippet


class TestCLI(unittest.TestCase):
    """Integration tests exercising the command-line interface."""

    def setUp(self):
        """Set up a clean, in-memory database for each test."""
        self.db_name = f"test_{random.randint(0, 100000)}.db"
        self.engine = create_engine(f"sqlite:///{self.db_name}")
        SQLModel.metadata.create_all(self.engine)
        with Session(self.engine) as session:
            add_snippet(session, "test_snippet", "MOV EAX, 1", quiet=True)

    def tearDown(self):
        """Clean up the database after each test."""
        os.remove(self.db_name)

    def run_command(self, command, input_data=None):
        """Helper function to run a command and return the output."""
        result = subprocess.run(
            ["python", "-m", "asmatch.cli", *shlex.split(command)],
            shell=False,
            capture_output=True,
            text=True,
            input=input_data,
            env={
                **os.environ,
                "PYTHONPATH": os.path.join(os.getcwd(), "src"),
                "DATABASE_URL": f"sqlite:///{self.db_name}",
            },
            check=False,
        )
        return result

    def test_help_message(self):
        """Test that the --help message is displayed correctly."""
        result = self.run_command("--help")
        self.assertEqual(result.returncode, 0)
        self.assertIn("usage:", result.stdout)

    def test_stats_command(self):
        """Test the stats command."""
        result = self.run_command("stats")
        self.assertEqual(result.returncode, 0)
        self.assertIn("Database Statistics", result.stdout)
        self.assertIn("Number of snippets: 1", result.stdout)

    def test_find_command(self):
        """Test the find command."""
        result = self.run_command("find --query 'MOV EAX, 1'")
        self.assertEqual(result.returncode, 0)
        self.assertIn("Top Matches", result.stdout)
        self.assertIn("test_snippet", result.stdout)

    def test_add_command(self):
        """Test the add command."""
        result = self.run_command("add new_snippet 'MOV EBX, 2'")
        self.assertEqual(result.returncode, 0)
        self.assertIn("now has names", result.stdout)

        # Verify that the snippet was actually added
        with Session(self.engine) as session:
            snippet = Snippet.get_by_name(session, "new_snippet")
            self.assertIsNotNone(snippet)

    def test_delete_command(self):
        """Test removing a snippet name via the rm/del commands."""
        # Add an alias to delete
        self.run_command("add temp_alias 'MOV EAX, 1'")

        # Confirm the alias exists
        with Session(self.engine) as session:
            snippet = Snippet.get_by_name(session, "temp_alias")
            self.assertIsNotNone(snippet)
            self.assertIn("temp_alias", snippet.name_list)

        # Run the rm command with confirmation
        result = self.run_command("rm temp_alias", input_data="y\n")
        self.assertEqual(result.returncode, 0)
        self.assertIn("Removed", result.stdout)

        # Verify the alias has been removed
        with Session(self.engine) as session:
            snippet = Snippet.get_by_name(session, "temp_alias")
            self.assertIsNone(snippet)
            # Original snippet should still exist
            orig = Snippet.get_by_name(session, "test_snippet")
            self.assertIsNotNone(orig)

    def test_compare_command(self):
        """Test comparing two snippets for similarity metrics."""
        # Add a second snippet to compare
        self.run_command("add another_snippet 'MOV EAX, 2'")
        with Session(self.engine) as session:
            s1 = Snippet.get_by_name(session, "test_snippet")
            s2 = Snippet.get_by_name(session, "another_snippet")
            checksum1 = s1.checksum
            checksum2 = s2.checksum

        result = self.run_command(f"compare {checksum1} {checksum2}")
        self.assertEqual(result.returncode, 0)
        self.assertIn("Jaccard Similarity", result.stdout)
        self.assertIn("Levenshtein Score", result.stdout)


if __name__ == "__main__":
    unittest.main()
