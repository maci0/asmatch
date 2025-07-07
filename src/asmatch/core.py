
# asmatch/core.py
import pickle
import time
import hashlib
from pygments.lexers.asm import NasmLexer
from pygments.token import Name, Number, Punctuation, Comment, Text
from datasketch import MinHash, MinHashLSH
from rapidfuzz import process, fuzz
from sqlmodel import Session, select
from .models import Snippet

# --- Constants and Configuration ---
NUM_PERMUTATIONS = 128
LSH_THRESHOLD = 0.2

# Initialize the Lexer once
lexer = NasmLexer()

# --- Core Processing Functions ---

def get_normalized_string(code_snippet: str) -> str:
    """
    Normalizes an assembly snippet to a canonical string representation
    by removing comments and standardizing whitespace.
    """
    tokens = lexer.get_tokens(code_snippet)
    # Join tokens, but only if they are not comments or pure whitespace
    return " ".join(
        value for ttype, value in tokens 
        if ttype not in Comment and ttype != Text
    ).strip()

def get_checksum(code_snippet: str) -> str:
    """Calculates the SHA256 checksum of a normalized code snippet."""
    normalized_string = get_normalized_string(code_snippet)
    return hashlib.sha256(normalized_string.encode('utf-8')).hexdigest()

def get_tokens(code_snippet: str, normalize: bool = True):
    """
    Returns a list of tokens from a code snippet, with an option to disable normalization.
    """
    tokens = lexer.get_tokens(code_snippet)
    output_tokens = []
    for ttype, value in tokens:
        if ttype in Comment:
            continue
        
        if normalize:
            if ttype in Name.Register:
                output_tokens.append("REG")
            elif ttype in Number:
                output_tokens.append("IMM")
            elif ttype not in Punctuation and value.strip():
                output_tokens.append(value.upper())
        else:
            if ttype not in Punctuation and value.strip():
                output_tokens.append(value.upper())
                
    return output_tokens

def code_to_minhash(code_snippet: str, normalize: bool = True) -> MinHash:
    """Takes assembly code, tokenizes it, and returns a MinHash object."""
    tokens = get_tokens(code_snippet, normalize)
    m = MinHash(num_perm=NUM_PERMUTATIONS)
    if not tokens:
        return m
    for token in set(tokens):
        m.update(token.encode('utf8'))
    return m

# --- LSH Index Management ---

def get_lsh_index(session: Session, threshold: float = LSH_THRESHOLD) -> MinHashLSH:
    """Builds or rebuilds the LSH index from snippets in the database."""
    try:
        lsh = MinHashLSH(threshold=threshold, num_perm=NUM_PERMUTATIONS)
    except ValueError as e:
        print(f"Error: Invalid LSH parameters. The threshold ({threshold}) may be too high for the number of permutations ({NUM_PERMUTATIONS}).")
        print(f"  -> Original error: {e}")
        return None
        
    snippets = Snippet.get_all(session)
    for snippet in snippets:
        lsh.insert(snippet.checksum, snippet.get_minhash_obj())
    return lsh

# --- Application Logic Functions ---

def add_snippet(session: Session, name: str, code: str, quiet: bool = False):
    """Adds a new snippet to the database."""
    checksum = get_checksum(code)
    
    existing_by_checksum = Snippet.get_by_checksum(session, checksum)
    if existing_by_checksum:
        if not quiet:
            print(f"Error: Snippet with this exact code already exists under the name '{existing_by_checksum.name}'.")
        return None

    existing_by_name = Snippet.get_by_name(session, name)
    if existing_by_name:
        if not quiet:
            print(f"Error: Snippet with name '{name}' already exists.")
        return None
    
    minhash_obj = code_to_minhash(code)
    minhash_bytes = pickle.dumps(minhash_obj)
    
    snippet = Snippet(checksum=checksum, name=name, code=code, minhash=minhash_bytes)
    session.add(snippet)
    session.commit()
    session.refresh(snippet)
    return snippet

def find_matches(session: Session, query_string: str, top_n: int = 3, threshold: float = None, normalize: bool = True):
    """Finds and prints top matches for a query."""
    if threshold is None:
        threshold = LSH_THRESHOLD
        
    lsh = get_lsh_index(session, threshold)
    query_minhash = code_to_minhash(query_string, normalize)
    candidate_keys = lsh.query(query_minhash)
    
    if not candidate_keys:
        return 0, []

    candidate_snippets = [Snippet.get_by_checksum(session, key) for key in candidate_keys]
    # Create a dictionary mapping checksum to the full snippet object
    candidate_map = {s.checksum: s for s in candidate_snippets if s}
    candidate_choices = {checksum: snippet.code for checksum, snippet in candidate_map.items()}

    top_matches_tuples = process.extract(
        query_string,
        candidate_choices,
        scorer=fuzz.ratio,
        limit=top_n
    )
    
    # Reconstruct the match list with the full snippet object
    top_matches = [
        (candidate_map[checksum], score) for _, score, checksum in top_matches_tuples
    ]
    
    return len(candidate_keys), top_matches

def delete_snippet(session: Session, name: str):
    """Deletes a snippet from the database by name."""
    snippet = Snippet.get_by_name(session, name)
    if not snippet:
        print(f"Error: Snippet with name '{name}' not found.")
        return False
    
    session.delete(snippet)
    session.commit()
    return True

def update_snippet(session: Session, name: str, new_code: str):
    """Updates the code for an existing snippet."""
    snippet = Snippet.get_by_name(session, name)
    if not snippet:
        print(f"Error: Snippet with name '{name}' not found.")
        return None
    
    session.delete(snippet)
    session.commit()
    
    return add_snippet(session, name, new_code)

def reindex_database(session: Session):
    """Recalculates the MinHash for every snippet in the database."""
    start_time = time.time()
    snippets = Snippet.get_all(session)
    num_snippets = len(snippets)

    if num_snippets == 0:
        return {"num_reindexed": 0, "time_elapsed": 0, "avg_time_per_snippet": 0}

    for snippet in snippets:
        minhash_obj = code_to_minhash(snippet.code)
        snippet.minhash = pickle.dumps(minhash_obj)
        session.add(snippet)
    
    session.commit()
    
    end_time = time.time()
    time_elapsed = end_time - start_time
    
    return {
        "num_reindexed": num_snippets,
        "time_elapsed": time_elapsed,
        "avg_time_per_snippet": time_elapsed / num_snippets,
    }

def get_snippet_by_checksum(session: Session, checksum: str):
    """Retrieves a snippet by its checksum."""
    return Snippet.get_by_checksum(session, checksum)

def get_db_stats(session: Session):
    """Returns a dictionary of database statistics."""
    snippets = Snippet.get_all(session)
    if not snippets:
        return {"num_snippets": 0, "avg_snippet_size": 0, "vocabulary_size": 0}

    total_size = sum(len(s.code) for s in snippets)
    
    all_tokens = set()
    for s in snippets:
        all_tokens.update(get_tokens(s.code))

    return {
        "num_snippets": len(snippets),
        "avg_snippet_size": total_size / len(snippets),
        "vocabulary_size": len(all_tokens),
    }

def list_snippets(session: Session, start: int = 0, end: int = 0):
    """Lists snippets, optionally within a given range."""
    if end > 0:
        return session.exec(select(Snippet).offset(start).limit(end - start)).all()
    return Snippet.get_all(session)
