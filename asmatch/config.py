"""Configuration loader for asmatch."""

import logging
import os
import tempfile

import tomli
import tomli_w

DEFAULT_CONFIG_DIR = os.path.expanduser("~/.config/asmatch")
CONFIG_DIR = os.path.expanduser(
    os.environ.get("ASMATCH_CONFIG_DIR", DEFAULT_CONFIG_DIR)
)
CONFIG_PATH = os.path.join(CONFIG_DIR, "config.toml")

DEFAULTS = {
    "lsh_threshold": 0.5,
    "num_permutations": 128,
    "top_n": 5,
}

logger = logging.getLogger(__name__)


def save_config(config: dict) -> None:
    """Write ``config`` to ``CONFIG_PATH`` atomically."""
    if not os.path.exists(CONFIG_DIR):
        os.makedirs(CONFIG_DIR)

    with tempfile.NamedTemporaryFile("wb", dir=CONFIG_DIR, delete=False) as tmp:
        tomli_w.dump(config, tmp)
        tmp_path = tmp.name

    os.replace(tmp_path, CONFIG_PATH)


def update_config(key: str, value: int | float) -> dict:
    """Update ``key`` in the config file with ``value`` and return the new config."""
    config = {}
    if os.path.exists(CONFIG_PATH):
        with open(CONFIG_PATH, "rb") as f:
            try:
                config = tomli.load(f)
            except tomli.TOMLDecodeError:
                config = {}

    config[key] = value
    save_config({**DEFAULTS, **config})
    return {**DEFAULTS, **config}


def remove_config_key(key: str) -> dict:
    """Remove ``key`` from the config file and return the new config."""
    config = {}
    if os.path.exists(CONFIG_PATH):
        with open(CONFIG_PATH, "rb") as f:
            try:
                config = tomli.load(f)
            except tomli.TOMLDecodeError:
                config = {}

    if key in config:
        del config[key]
        save_config(config)

    return {**DEFAULTS, **config}


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
            logger.error("Error decoding config file at %s: %s", CONFIG_PATH, e)
            return DEFAULTS
