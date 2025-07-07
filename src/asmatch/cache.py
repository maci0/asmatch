
# asmatch/cache.py
import os
import pickle

from datasketch import MinHashLSH
from sqlmodel import Session, func, select

from .models import Snippet

CACHE_DIR = os.path.expanduser("~/.cache/asmatch")
DB_CHECKSUM_PATH = os.path.join(CACHE_DIR, "db_checksum.txt")

def get_lsh_cache_path(threshold: float) -> str:
    """Returns the path to the LSH cache file for a given threshold."""
    return os.path.join(CACHE_DIR, f"lsh_{threshold:.2f}.pkl")

def get_db_checksum(session: Session):
    """
    A simple way to get a checksum representing the state of the database.
    This is not foolproof but is good enough for cache invalidation.
    It's based on the number of snippets and the checksum of the last snippet.
    """
    count = session.exec(select(func.count(Snippet.checksum))).one()
    if count == 0:
        return "empty"
    
    last_snippet = session.exec(select(Snippet).order_by(Snippet.checksum.desc())).first()
    return f"{count}-{last_snippet.checksum}"

def build_lsh_index(session: Session, threshold: float, num_perm: int) -> MinHashLSH:
    """Builds the LSH index from snippets in the database."""
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
    """Saves the LSH index and the current DB checksum to the cache."""
    if not os.path.exists(CACHE_DIR):
        os.makedirs(CACHE_DIR)
        
    lsh_cache_path = get_lsh_cache_path(threshold)
    with open(lsh_cache_path, "wb") as f:
        pickle.dump(lsh, f)
        
    with open(DB_CHECKSUM_PATH, "w") as f:
        f.write(get_db_checksum(session))

def load_lsh_cache(session: Session, threshold: float):
    """
    Loads the LSH index from the cache if it's valid.
    Returns the LSH object or None if the cache is invalid or doesn't exist.
    """
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
    """
    Invalidates the cache by deleting all cache files.
    This is a bit of a blunt instrument, but it's effective.
    """
    if os.path.exists(CACHE_DIR):
        for f in os.listdir(CACHE_DIR):
            os.remove(os.path.join(CACHE_DIR, f))
