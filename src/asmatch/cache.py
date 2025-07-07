
"""Utilities for caching and loading the MinHash LSH index."""

import os
import pickle

from datasketch import MinHashLSH
from sqlmodel import Session, func, select

from .models import Snippet

CACHE_DIR = os.path.expanduser("~/.cache/asmatch")
DB_CHECKSUM_PATH = os.path.join(CACHE_DIR, "db_checksum.txt")

def get_lsh_cache_path(threshold: float) -> str:
    """Return the path to the LSH cache file for a given threshold."""
    return os.path.join(CACHE_DIR, f"lsh_{threshold:.2f}.pkl")

def get_db_checksum(session: Session) -> str:
    """Return a checksum representing the current database state."""
    count = session.exec(select(func.count(Snippet.checksum))).one()
    if count == 0:
        return "empty"
    
    last_snippet = session.exec(select(Snippet).order_by(Snippet.checksum.desc())).first()
    return f"{count}-{last_snippet.checksum}"

def build_lsh_index(session: Session, threshold: float, num_perm: int) -> MinHashLSH:
    """Build the LSH index from snippets in the database."""
    try:
        lsh = MinHashLSH(threshold=threshold, num_perm=num_perm)
    except ValueError as e:
        print(f"Error: Invalid LSH parameters. The threshold ({threshold}) may be too high for the number of permutations ({num_perm}).")
        print(f"  -> Original error: {e}")
        return None
        
    snippets = Snippet.get_all(session)
    for snippet in snippets:
        lsh.insert(snippet.checksum, snippet.get_minhash_obj())
    return lsh

def save_lsh_cache(session: Session, lsh, threshold: float):
    """Save the LSH index and the current DB checksum to the cache."""
    if not os.path.exists(CACHE_DIR):
        os.makedirs(CACHE_DIR)
        
    lsh_cache_path = get_lsh_cache_path(threshold)
    with open(lsh_cache_path, "wb") as f:
        pickle.dump(lsh, f)
        
    with open(DB_CHECKSUM_PATH, "w") as f:
        f.write(get_db_checksum(session))

def load_lsh_cache(session: Session, threshold: float):
    """Load the LSH index from cache if it is still valid."""
    lsh_cache_path = get_lsh_cache_path(threshold)
    if not os.path.exists(lsh_cache_path) or not os.path.exists(DB_CHECKSUM_PATH):
        return None
        
    with open(DB_CHECKSUM_PATH, "r") as f:
        cached_checksum = f.read()
        
    current_checksum = get_db_checksum(session)
    
    if cached_checksum != current_checksum:
        return None # Cache is stale
        
    with open(lsh_cache_path, "rb") as f:
        return pickle.load(f)

def invalidate_lsh_cache():
    """Delete all cached LSH files."""
    if os.path.exists(CACHE_DIR):
        for f in os.listdir(CACHE_DIR):
            os.remove(os.path.join(CACHE_DIR, f))
