"""Utilities for caching and loading the MinHash LSH index."""

import logging
import os
import pickle

from datasketch import MinHashLSH
from sqlmodel import Session

from .database import db_checksum_get
from .models import Snippet

logger = logging.getLogger(__name__)

DEFAULT_CACHE_DIR = os.path.expanduser("~/.cache/asmatch")
CACHE_DIR = os.path.expanduser(os.environ.get("ASMATCH_CACHE_DIR", DEFAULT_CACHE_DIR))
DB_CHECKSUM_PATH = os.path.join(CACHE_DIR, "db_checksum.txt")


def lsh_cache_path_get(threshold: float) -> str:
    """Return the path to the LSH cache file for a given threshold."""
    return os.path.join(CACHE_DIR, f"lsh_{threshold:.2f}.pkl")


def lsh_index_build(session: Session, threshold: float, num_perm: int) -> MinHashLSH:
    """Build the LSH index from snippets in the database."""
    try:
        lsh = MinHashLSH(threshold=threshold, num_perm=num_perm)
    except ValueError as e:
        logger.error(
            "Error: Invalid LSH parameters. The threshold (%s) may be too high for the number of permutations (%s).",
            threshold,
            num_perm,
        )
        logger.error("  -> Original error: %s", e)
        return None

    snippets = Snippet.get_all(session)
    for snippet in snippets:
        lsh.insert(snippet.checksum, snippet.get_minhash_obj())
    return lsh


def lsh_cache_save(session: Session, lsh: MinHashLSH, threshold: float) -> None:
    """Save the LSH index and the current DB checksum to the cache."""
    if not os.path.exists(CACHE_DIR):
        os.makedirs(CACHE_DIR)

    lsh_cache_path = lsh_cache_path_get(threshold)
    with open(lsh_cache_path, "wb") as f:
        pickle.dump(lsh, f)

    with open(DB_CHECKSUM_PATH, "w", encoding="utf-8") as f:
        f.write(db_checksum_get(session))


def lsh_cache_load(session: Session, threshold: float) -> MinHashLSH | None:
    """Load the LSH index from cache if it is still valid."""
    lsh_cache_path = lsh_cache_path_get(threshold)
    if not os.path.exists(lsh_cache_path) or not os.path.exists(DB_CHECKSUM_PATH):
        return None

    with open(DB_CHECKSUM_PATH, "r", encoding="utf-8") as f:
        cached_checksum = f.read()

    current_checksum = db_checksum_get(session)

    if cached_checksum != current_checksum:
        return None  # Cache is stale

    with open(lsh_cache_path, "rb") as f:
        return pickle.load(f)


def lsh_cache_invalidate():
    """Delete all cached LSH files."""
    if os.path.exists(CACHE_DIR):
        for f in os.listdir(CACHE_DIR):
            path = os.path.join(CACHE_DIR, f)
            if os.path.isfile(path):
                os.remove(path)
