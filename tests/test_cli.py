"""Integration tests for the asmatch CLI."""

import os
import random
import shlex
import subprocess
import tempfile
import unittest

import tomli
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

    def run_command(self, command, input_data=None, extra_env=None):
        """Helper function to run a command and return the output."""
        env = {
            **os.environ,
            "PYTHONPATH": os.path.join(os.getcwd(), "src"),
            "DATABASE_URL": f"sqlite:///{self.db_name}",
        }
        if extra_env:
            env.update(extra_env)

        result = subprocess.run(
            ["python", "-m", "asmatch.cli", *shlex.split(command)],
            shell=False,
            capture_output=True,
            text=True,
            input=input_data,
            env=env,
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

    def test_find_command_with_stdin(self):
        """Test the find command with stdin."""
        result = self.run_command("find --file -", input_data="MOV EAX, 1")
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

    def test_config_set_preserves_existing_settings(self):
        """`config set` should update a single key without losing others."""
        with tempfile.TemporaryDirectory() as home:
            env = {
                **os.environ,
                "PYTHONPATH": os.path.join(os.getcwd(), "src"),
                "DATABASE_URL": f"sqlite:///{self.db_name}",
                "HOME": home,
            }
            result = subprocess.run(
                [
                    "python",
                    "-m",
                    "asmatch.cli",
                    "config",
                    "set",
                    "lsh_threshold",
                    "0.7",
                ],
                capture_output=True,
                text=True,
                env=env,
                check=False,
            )
            self.assertEqual(result.returncode, 0)

            result = subprocess.run(
                ["python", "-m", "asmatch.cli", "config", "set", "top_n", "10"],
                capture_output=True,
                text=True,
                env=env,
                check=False,
            )
            self.assertEqual(result.returncode, 0)

            config_path = os.path.join(home, ".config", "asmatch", "config.toml")
            with open(config_path, "rb") as f:
                data = tomli.load(f)

        self.assertEqual(data.get("lsh_threshold"), 0.7)
        self.assertEqual(data.get("top_n"), 10)

    def test_config_dir_env_override(self):
        """ASMATCH_CONFIG_DIR should override the default config path."""
        with tempfile.TemporaryDirectory() as cfgdir:
            result = self.run_command(
                "config set top_n 7",
                extra_env={"ASMATCH_CONFIG_DIR": cfgdir},
            )
            self.assertEqual(result.returncode, 0)

            config_path = os.path.join(cfgdir, "config.toml")
            with open(config_path, "rb") as f:
                data = tomli.load(f)

            self.assertEqual(data.get("top_n"), 7)

            result = self.run_command(
                "config path",
                extra_env={"ASMATCH_CONFIG_DIR": cfgdir},
            )
            self.assertIn(config_path, result.stdout)

    def test_cache_dir_env_override(self):
        """ASMATCH_CACHE_DIR should control where cache files are stored."""
        with tempfile.TemporaryDirectory() as cache_dir:
            result = self.run_command(
                "find --query 'MOV EAX, 1'",
                extra_env={"ASMATCH_CACHE_DIR": cache_dir},
            )
            self.assertEqual(result.returncode, 0)
            cache_file = os.path.join(cache_dir, "lsh_0.50.pkl")
            self.assertTrue(os.path.exists(cache_file))

    def test_quiet_option(self):
        """Test that --quiet suppresses informational output."""
        result = self.run_command("--quiet stats")
        self.assertEqual(result.returncode, 0)
        self.assertEqual(result.stdout.strip(), "")

    def test_config_set_and_list(self):
        """`config list` should show values set via `config set`."""
        with tempfile.TemporaryDirectory() as home:
            env = {"HOME": home}
            set_result = self.run_command("config set lsh_threshold 0.6", extra_env=env)
            self.assertEqual(set_result.returncode, 0)

            list_result = self.run_command("config list", extra_env=env)
            self.assertEqual(list_result.returncode, 0)
            self.assertIn("lsh_threshold = 0.6", list_result.stdout)
            self.assertIn("top_n = 5", list_result.stdout)

    def test_reindex_command(self):
        """`reindex` should run when confirmation is provided."""
        result = self.run_command("reindex", input_data="y\n")
        self.assertEqual(result.returncode, 0)
        self.assertIn("Snippets re-indexed: 1", result.stdout)

    def test_delete_name_with_confirmation(self):
        """Removing a name after confirmation should update the database."""
        # Add a second alias so the snippet isn't deleted entirely
        with Session(self.engine) as session:
            add_snippet(session, "alias2", "MOV EAX, 1", quiet=True)

        rm_result = self.run_command("rm test_snippet", input_data="y\n")
        self.assertEqual(rm_result.returncode, 0)

        with Session(self.engine) as session:
            snippet = Snippet.get_by_name(session, "test_snippet")
            self.assertIsNone(snippet)
            remaining = Snippet.get_by_name(session, "alias2")
            self.assertIsNotNone(remaining)


if __name__ == "__main__":
    unittest.main()
