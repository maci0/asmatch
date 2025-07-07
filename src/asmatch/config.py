
"""Configuration loader for asmatch."""

import os

import tomli

CONFIG_DIR = os.path.expanduser("~/.config/asmatch")
CONFIG_PATH = os.path.join(CONFIG_DIR, "config.toml")

DEFAULTS = {
    "lsh_threshold": 0.2,
    "num_permutations": 128,
    "top_n": 3,
}

def load_config() -> dict:
    """Load the user's configuration file if it exists."""
    if not os.path.exists(CONFIG_PATH):
        return DEFAULTS
        
    with open(CONFIG_PATH, "rb") as f:
        try:
            user_config = tomli.load(f)
            # Merge user config with defaults, user config takes precedence
            return {**DEFAULTS, **user_config}
        except tomli.TOMLDecodeError as e:
            print(f"Error decoding config file at {CONFIG_PATH}: {e}")
            return DEFAULTS
