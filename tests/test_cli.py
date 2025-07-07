import random
import unittest
import subprocess
import os
from sqlmodel import Session, SQLModel, create_engine, select
from asmatch.models import Snippet
from asmatch.core import add_snippet

class TestCLI(unittest.TestCase):

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

    def run_command(self, command):
        """Helper function to run a command and return the output."""
        result = subprocess.run(
            f"asmatch {command}",
            shell=True,
            capture_output=True,
            text=True,
            env={**os.environ, "DATABASE_URL": f"sqlite:///{self.db_name}"},
        )
        return result

    def test_help_message(self):
        """Test that the --help message is displayed correctly."""
        result = self.run_command("--help")
        self.assertEqual(result.returncode, 0)
        self.assertIn("usage: asmatch", result.stdout)

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

if __name__ == '__main__':
    import random
    unittest.main()