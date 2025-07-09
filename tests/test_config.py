"""Unit tests for the asmatch config module."""

import os
import tempfile
import unittest
from unittest.mock import patch

from asmatch.config import (
    DEFAULTS,
    load_config,
    remove_config_key,
    save_config,
    update_config,
)


class TestConfig(unittest.TestCase):
    """Tests for configuration file handling."""

    def test_load_nonexistent_config(self):
        """If no config file exists, load_config should return defaults."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            with patch("asmatch.config.CONFIG_PATH", config_path):
                config = load_config()
        self.assertEqual(config, DEFAULTS)

    def test_load_malformed_config(self):
        """If the config file is malformed, load_config should return defaults."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with open(config_path, "w", encoding="utf-8") as f:
                f.write("this is not valid toml")
            with patch("asmatch.config.CONFIG_PATH", config_path):
                config = load_config()
        self.assertEqual(config, DEFAULTS)

    def test_update_and_load_config(self):
        """Test that update_config correctly writes a value and load_config reads it."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    update_config("top_n", 10)
                    config = load_config()
            self.assertEqual(config.get("top_n"), 10)
            # Ensure other defaults are preserved
            self.assertEqual(config.get("lsh_threshold"), DEFAULTS.get("lsh_threshold"))

    def test_remove_config_key(self):
        """Test that remove_config_key correctly removes a key."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    update_config("top_n", 10)
                    remove_config_key("top_n")
                    config = load_config()
            self.assertEqual(config.get("top_n"), DEFAULTS.get("top_n"))

    def test_update_with_malformed_config(self):
        """Test that update_config works with a malformed config file."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with open(config_path, "w", encoding="utf-8") as f:
                f.write("this is not valid toml")
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    config = update_config("top_n", 10)
            self.assertEqual(config.get("top_n"), 10)
            self.assertEqual(config.get("lsh_threshold"), DEFAULTS.get("lsh_threshold"))

    def test_remove_with_malformed_config(self):
        """Test that remove_config_key works with a malformed config file."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with open(config_path, "w", encoding="utf-8") as f:
                f.write("this is not valid toml")
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    config = remove_config_key("top_n")
            self.assertEqual(config, DEFAULTS)

    def test_remove_nonexistent_key(self):
        """Test that remove_config_key does nothing for a nonexistent key."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            os.makedirs(config_dir)
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    # Start with a known config
                    update_config("top_n", 10)
                    # Attempt to remove a key that isn't there
                    remove_config_key("lsh_threshold")
                    config = load_config()
            # The original config should be unchanged
            self.assertEqual(config.get("top_n"), 10)
            self.assertEqual(config.get("lsh_threshold"), DEFAULTS.get("lsh_threshold"))

    def test_save_config_creates_directory(self):
        """save_config should create the config directory if it doesn't exist."""
        with tempfile.TemporaryDirectory() as temp_dir:
            config_dir = os.path.join(temp_dir, ".config", "asmatch")
            config_path = os.path.join(config_dir, "config.toml")
            # Do not create the directory
            with patch("asmatch.config.CONFIG_PATH", config_path):
                with patch("asmatch.config.CONFIG_DIR", config_dir):
                    save_config({"test": "value"})
            self.assertTrue(os.path.exists(config_dir))
            self.assertTrue(os.path.exists(config_path))
