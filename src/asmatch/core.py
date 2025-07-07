# asmatch/core.py
import hashlib
import json
import pickle
import random
import time

from datasketch import MinHash
from pygments.lexers.asm import NasmLexer
from pygments.token import Comment, Name, Number, Punctuation, Text
from rapidfuzz import fuzz, process
from sqlmodel import Session, select

from .cache import build_lsh_index, invalidate_lsh_cache, load_lsh_cache, save_lsh_cache
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

# --- Application Logic Functions ---

def add_snippet(session: Session, name: str, code: str, quiet: bool = False):
    """
    Adds a new snippet to the database.
    If the code already exists, it adds the new name as an alias.
    """
    checksum = get_checksum(code)
    
    existing_snippet_by_name = Snippet.get_by_name(session, name)
    if existing_snippet_by_name:
        if not quiet:
            print(f"Error: Name '{name}' is already associated with a different snippet.")
        return None

    existing_snippet = Snippet.get_by_checksum(session, checksum)
    
    if existing_snippet:
        # Code exists, add new name as an alias
        name_list = existing_snippet.name_list
        name_list.append(name)
        existing_snippet.names = json.dumps(name_list)
        session.add(existing_snippet)
        session.commit()
        session.refresh(existing_snippet)
        invalidate_lsh_cache()
        return existing_snippet

    # Snippet with this code does not exist, create a new one
    minhash_obj = code_to_minhash(code)
    minhash_bytes = pickle.dumps(minhash_obj)
    
    new_snippet = Snippet(checksum=checksum, names=json.dumps([name]), code=code, minhash=minhash_bytes)
    session.add(new_snippet)
    session.commit()
    session.refresh(new_snippet)
    invalidate_lsh_cache()
    return new_snippet

def find_matches(session: Session, query_string: str, top_n: int = 3, threshold: float = None, normalize: bool = True):
    """Finds and prints top matches for a query."""
    if threshold is None:
        threshold = LSH_THRESHOLD
        
    lsh = load_lsh_cache(session, threshold)
    if not lsh:
        lsh = build_lsh_index(session, threshold, NUM_PERMUTATIONS)
        if lsh:
            save_lsh_cache(session, lsh, threshold)
    
    if lsh is None:
        return 0, [] # Error handled in build_lsh_index

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

def delete_snippet(session: Session, name: str, quiet: bool = False):
    """
    Deletes a name from a snippet. If it's the last name, deletes the snippet.
    """
    snippet = Snippet.get_by_name(session, name)
    if not snippet:
        if not quiet:
            print(f"Error: Snippet with name '{name}' not found.")
        return False
    
    name_list = snippet.name_list
    if len(name_list) > 1:
        name_list.remove(name)
        snippet.names = json.dumps(name_list)
        session.add(snippet)
        session.commit()
        if not quiet:
            print(f"Removed name '{name}' from snippet. {len(name_list)} names remain.")
    else:
        session.delete(snippet)
        session.commit()
        if not quiet:
            print(f"Removed last name '{name}'. Deleting snippet.")
            
    invalidate_lsh_cache()
    return True

def update_snippet(session: Session, name: str, new_code: str):
    """This function is now deprecated in favor of the alias system."""
    print("Warning: 'update snippet' is deprecated. Use create and delete for alias management.")
    return None

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
    invalidate_lsh_cache()
    
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

def compare_snippets(session: Session, checksum1: str, checksum2: str) -> dict:
    """
    Compares two snippets by their checksums and returns a dictionary of comparison metrics.
    """
    snippet1 = get_snippet_by_checksum(session, checksum1)
    snippet2 = get_snippet_by_checksum(session, checksum2)

    if not snippet1 or not snippet2:
        return None

    m1 = snippet1.get_minhash_obj()
    m2 = snippet2.get_minhash_obj()
    jaccard_similarity = m1.jaccard(m2)

    levenshtein_score = fuzz.ratio(snippet1.code, snippet2.code)

    tokens1 = set(get_tokens(snippet1.code, normalize=True))
    tokens2 = set(get_tokens(snippet2.code, normalize=True))
    shared_tokens = len(tokens1.intersection(tokens2))
    
    return {
        "snippet1": {
            "checksum": snippet1.checksum,
            "names": snippet1.name_list,
            "token_count": len(tokens1),
        },
        "snippet2": {
            "checksum": snippet2.checksum,
            "names": snippet2.name_list,
            "token_count": len(tokens2),
        },
        "comparison": {
            "jaccard_similarity": jaccard_similarity,
            "levenshtein_score": levenshtein_score,
            "shared_normalized_tokens": shared_tokens,
        }
    }

def get_average_similarity(session: Session, sample_size: int = 100) -> float:
    """
    Estimates the average Jaccard similarity of the dataset by comparing a random sample of snippets.
    """
    snippets = Snippet.get_all(session)
    if len(snippets) < 2:
        return 1.0

    if len(snippets) > sample_size:
        snippets = random.sample(snippets, sample_size)

    total_similarity = 0
    num_comparisons = 0
    
    for i in range(len(snippets)):
        for j in range(i + 1, len(snippets)):
            m1 = snippets[i].get_minhash_obj()
            m2 = snippets[j].get_minhash_obj()
            total_similarity += m1.jaccard(m2)
            num_comparisons += 1
            
    return total_similarity / num_comparisons if num_comparisons > 0 else 1.0

def get_db_stats(session: Session):
    """Returns a dictionary of database statistics."""
    snippets = Snippet.get_all(session)
    if not snippets:
        return {"num_snippets": 0, "avg_snippet_size": 0, "vocabulary_size": 0, "avg_similarity": 0.0}

    total_size = sum(len(s.code) for s in snippets)
    
    all_tokens = set()
    for s in snippets:
        all_tokens.update(get_tokens(s.code))

    return {
        "num_snippets": len(snippets),
        "avg_snippet_size": total_size / len(snippets),
        "vocabulary_size": len(all_tokens),
        "avg_similarity": get_average_similarity(session),
    }

def list_snippets(session: Session, start: int = 0, end: int = 0):
    """Lists snippets, optionally within a given range."""
    if end > 0:
        return session.exec(select(Snippet).offset(start).limit(end - start)).all()
    return Snippet.get_all(session)