"""Tests for the __main__ module."""

import runpy
import unittest
from unittest.mock import patch


class TestMain(unittest.TestCase):
    """Tests for the main entry point."""

    @patch("asmatch.cli.main")
    def test_main_entry_point(self, mock_main):
        """Test that running the module calls cli.main."""
        with patch("sys.argv", ["asmatch", "stats"]):
            runpy.run_module("asmatch", run_name="__main__")
        mock_main.assert_called_once()


if __name__ == "__main__":
    unittest.main()
