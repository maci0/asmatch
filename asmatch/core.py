"""Core functions for tokenizing and comparing assembly snippets."""

import hashlib
import json
import logging
import os
import pickle
import random
import time

from datasketch import MinHash
from pygments.lexers.asm import NasmLexer
from pygments.token import Comment, Name, Number, Punctuation, Text
from rapidfuzz import fuzz, process
from sqlmodel import Session, select, text

from .cache import lsh_cache_invalidate, lsh_cache_load, lsh_cache_save, lsh_index_build
from .models import Snippet

logger = logging.getLogger(__name__)

# --- Constants and Configuration ---
NUM_PERMUTATIONS = 128
LSH_THRESHOLD = 0.5

# Initialize the Lexer once
lexer = NasmLexer()

# A set of common register names to assist the lexer
REGISTERS = {
    "ah",
    "al",
    "ax",
    "bh",
    "bl",
    "bp",
    "bx",
    "ch",
    "cl",
    "cr0",
    "cr2",
    "cr3",
    "cr4",
    "cs",
    "cx",
    "dh",
    "di",
    "dl",
    "dr0",
    "dr1",
    "dr2",
    "dr3",
    "dr6",
    "dr7",
    "ds",
    "dx",
    "eax",
    "ebp",
    "ebx",
    "ecx",
    "edi",
    "edx",
    "eflags",
    "eip",
    "es",
    "esi",
    "esp",
    "fs",
    "gs",
    "rax",
    "rbp",
    "rbx",
    "rcx",
    "rdi",
    "rdx",
    "rip",
    "rsi",
    "rsp",
    "si",
    "sp",
    "ss",
    "st0",
    "st1",
    "st2",
    "st3",
    "st4",
    "st5",
    "st6",
    "st7",
    "xmm0",
    "xmm1",
    "xmm2",
    "xmm3",
    "xmm4",
    "xmm5",
    "xmm6",
    "xmm7",
    "ymm0",
    "ymm1",
    "ymm2",
    "ymm3",
    "ymm4",
    "ymm5",
    "ymm6",
    "ymm7",
}


# --- Core Processing Functions ---


def string_normalize(code_snippet: str) -> str:
    """Normalize an assembly snippet and return a canonical string."""
    tokens = lexer.get_tokens(code_snippet)
    # Join tokens, but only if they are not comments or pure whitespace
    return " ".join(
        value for ttype, value in tokens if ttype not in Comment and ttype != Text
    ).strip()


def snippet_name_add(
    session: Session, checksum: str, new_name: str, quiet: bool = False
):
    """Add a new name to an existing snippet."""
    snippet = Snippet.get_by_checksum(session, checksum)
    if not snippet:
        if not quiet:
            logger.error("Snippet with checksum %s not found.", checksum)
        return None

    name_list = snippet.name_list
    if new_name in name_list:
        if not quiet:
            logger.error("Name '%s' already exists for this snippet.", new_name)
        return None

    name_list.append(new_name)
    snippet.names = json.dumps(name_list)
    session.add(snippet)
    session.commit()
    session.refresh(snippet)
    return snippet


def snippet_name_remove(
    session: Session, checksum: str, name_to_remove: str, quiet: bool = False
):
    """Remove a name from a snippet."""
    snippet = Snippet.get_by_checksum(session, checksum)
    if not snippet:
        if not quiet:
            logger.error("Snippet with checksum %s not found.", checksum)
        return None

    name_list = snippet.name_list
    if name_to_remove not in name_list:
        if not quiet:
            logger.error("Name '%s' not found for this snippet.", name_to_remove)
        return None

    if len(name_list) == 1:
        if not quiet:
            logger.error("Cannot remove the last name from a snippet.")
        return None

    name_list.remove(name_to_remove)
    snippet.names = json.dumps(name_list)
    session.add(snippet)
    session.commit()
    session.refresh(snippet)
    return snippet


def string_checksum(code_snippet: str) -> str:
    """Calculate the SHA256 checksum of a normalized code snippet."""
    normalized_string = string_normalize(code_snippet)
    return hashlib.sha256(normalized_string.encode("utf-8")).hexdigest()


def token_is_label(token_type, value: str) -> bool:
    """Check if a token is a label."""
    return token_type in Name.Label or (token_type in Name and value.endswith(":"))


def code_tokenize(code_snippet: str, normalize: bool = True) -> list[str]:
    """Return a list of tokens from a code snippet."""
    tokens = lexer.get_tokens(code_snippet)
    output_tokens = []
    for ttype, value in tokens:
        if ttype in Comment:
            continue

        if normalize:
            if ttype in Name.Register or value.lower() in REGISTERS:
                output_tokens.append("REG")
            elif ttype in Number:
                output_tokens.append("IMM")
            elif token_is_label(ttype, value):
                output_tokens.append("LABEL")
            elif value.lower() in [
                "dword",
                "word",
                "byte",
                "qword",
                "dword ptr",
            ]:
                output_tokens.append("MEM_SIZE")
            elif ttype not in Punctuation and value.strip():
                output_tokens.append(value.upper())
        else:
            if ttype not in Punctuation and value.strip():
                output_tokens.append(value.upper())

    return output_tokens


def code_create_minhash(code_snippet: str, normalize: bool = True) -> MinHash:
    """Return a MinHash object representing the given code snippet."""
    tokens = code_tokenize(code_snippet, normalize)
    m = MinHash(num_perm=NUM_PERMUTATIONS)
    if not tokens:
        return m
    for token in set(tokens):
        m.update(token.encode("utf8"))
    return m


# --- Application Logic Functions ---


def snippet_add(session: Session, name: str, code: str):
    """Add a new snippet or alias to the database."""
    if not code.strip():
        return None
    checksum = string_checksum(code)

    existing_snippet = Snippet.get_by_checksum(session, checksum)

    if existing_snippet:
        # Code exists, add new name as an alias
        name_list = existing_snippet.name_list
        if name and name not in name_list:
            name_list.append(name)
            existing_snippet.names = json.dumps(name_list)
            session.add(existing_snippet)
            session.commit()
            session.refresh(existing_snippet)
            lsh_cache_invalidate()
        return existing_snippet

    # Snippet with this code does not exist, create a new one
    minhash_obj = code_create_minhash(code)
    minhash_bytes = pickle.dumps(minhash_obj)

    new_snippet = Snippet(
        checksum=checksum,
        names=json.dumps([name]),
        code=code,
        minhash=minhash_bytes,
    )
    session.add(new_snippet)
    session.commit()
    session.refresh(new_snippet)
    lsh_cache_invalidate()
    return new_snippet


def snippet_find_matches(
    session: Session,
    query_string: str,
    top_n: int = 3,
    threshold: float | None = None,
    normalize: bool = True,
):
    """Find and rank matches for a query string."""
    if threshold is None:
        threshold = LSH_THRESHOLD

    lsh = lsh_cache_load(session, threshold)
    if not lsh:
        lsh = lsh_index_build(session, threshold, NUM_PERMUTATIONS)
        if lsh:
            lsh_cache_save(session, lsh, threshold)

    if lsh is None:
        return 0, []  # Error handled in build_lsh_index

    query_minhash = code_create_minhash(query_string, normalize)
    candidate_keys = lsh.query(query_minhash)

    if not candidate_keys:
        return 0, []

    candidate_snippets = [
        Snippet.get_by_checksum(session, key) for key in candidate_keys
    ]

    candidate_map = {s.checksum: s for s in candidate_snippets if s}
    candidate_choices = {
        checksum: snippet.code for checksum, snippet in candidate_map.items()
    }

    top_matches_tuples = process.extract(
        query_string, candidate_choices, scorer=fuzz.ratio, limit=top_n
    )

    # Reconstruct the match list with the full snippet object
    top_matches = [
        (candidate_map[checksum], score) for _, score, checksum in top_matches_tuples
    ]

    return len(candidate_keys), top_matches


def snippet_delete(session: Session, checksum: str, quiet: bool = False):
    """Delete a snippet by its checksum."""
    snippet = Snippet.get_by_checksum(session, checksum)
    if not snippet:
        if not quiet:
            logger.error("Snippet with checksum %s not found.", checksum)
        return False

    session.delete(snippet)
    session.commit()
    if not quiet:
        logger.info("Snippet with checksum %s deleted.", checksum)

    lsh_cache_invalidate()
    return True


def db_reindex(session: Session):
    """Recalculate the MinHash for every snippet in the database."""
    start_time = time.time()
    snippets = Snippet.get_all(session)
    num_snippets = len(snippets)

    if num_snippets == 0:
        return {"num_reindexed": 0, "time_elapsed": 0, "avg_time_per_snippet": 0}

    for snippet in snippets:
        minhash_obj = code_create_minhash(snippet.code)
        snippet.minhash = pickle.dumps(minhash_obj)
        session.add(snippet)

    session.commit()
    lsh_cache_invalidate()

    end_time = time.time()
    time_elapsed = end_time - start_time

    return {
        "num_reindexed": num_snippets,
        "time_elapsed": time_elapsed,
        "avg_time_per_snippet": time_elapsed / num_snippets,
    }


def snippet_get(session: Session, checksum: str):
    """Return a snippet by its checksum."""
    return Snippet.get_by_checksum(session, checksum)


def snippet_compare(session: Session, checksum1: str, checksum2: str) -> dict | None:
    """Compare two snippets and return similarity metrics."""
    snippet1 = snippet_get(session, checksum1)
    snippet2 = snippet_get(session, checksum2)

    if not snippet1 or not snippet2:
        return None

    m1 = snippet1.get_minhash_obj()
    m2 = snippet2.get_minhash_obj()
    jaccard_similarity = m1.jaccard(m2)

    levenshtein_score = fuzz.ratio(snippet1.code, snippet2.code)

    tokens1 = set(code_tokenize(snippet1.code, normalize=True))
    tokens2 = set(code_tokenize(snippet2.code, normalize=True))
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
        },
    }


def db_calculate_average_similarity(session: Session, sample_size: int = 100) -> float:
    """Estimate average Jaccard similarity from a random sample."""
    snippets = Snippet.get_all(session)
    if len(snippets) < 2:
        return 1.0

    if len(snippets) > sample_size:
        snippets = random.sample(snippets, sample_size)

    total_similarity = 0
    num_comparisons = 0

    for i, snippet_i in enumerate(snippets):
        for snippet_j in snippets[i + 1 :]:
            m1 = snippet_i.get_minhash_obj()
            m2 = snippet_j.get_minhash_obj()
            total_similarity += m1.jaccard(m2)
            num_comparisons += 1

    return total_similarity / num_comparisons if num_comparisons > 0 else 1.0


def db_stats(session: Session):
    """Return a dictionary of database statistics."""
    snippets = Snippet.get_all(session)
    if not snippets:
        return {
            "num_snippets": 0,
            "avg_snippet_size": 0,
            "vocabulary_size": 0,
            "avg_jaccard_similarity": 0.0,
        }

    total_size = sum(len(s.code) for s in snippets)

    all_tokens = set()
    for s in snippets:
        all_tokens.update(code_tokenize(s.code))

    return {
        "num_snippets": len(snippets),
        "avg_snippet_size": total_size / len(snippets),
        "vocabulary_size": len(all_tokens),
        "avg_jaccard_similarity": db_calculate_average_similarity(session),
    }


def snippet_list(session: Session, start: int = 0, end: int = 0):
    """List snippets, optionally within a given range."""
    if end > 0:
        return session.exec(select(Snippet).offset(start).limit(end - start)).all()
    return Snippet.get_all(session)


def snippet_export(session: Session, export_dir: str) -> dict:
    """Export all snippets to a directory."""
    start_time = time.time()
    snippets = Snippet.get_all(session)
    num_exported = 0

    os.makedirs(export_dir, exist_ok=True)

    for snippet in snippets:
        # Use the first name as the primary name
        primary_name = snippet.name_list[0]
        file_path = os.path.join(export_dir, f"{primary_name}.asm")
        with open(file_path, "w", encoding="utf-8") as f:
            f.write(snippet.code)
        num_exported += 1

    end_time = time.time()
    time_elapsed = end_time - start_time

    return {
        "num_exported": num_exported,
        "time_elapsed": time_elapsed,
        "avg_time_per_snippet": (
            time_elapsed / num_exported if num_exported > 0 else 0
        ),
    }


def db_clean(session: Session) -> dict:
    """Clean the LSH cache and vacuum the database."""
    start_time = time.time()

    # 1. Invalidate (delete) all cache files
    lsh_cache_invalidate()

    # 2. Vacuum the database to reclaim space
    session.execute(text("VACUUM"))
    session.commit()

    end_time = time.time()
    time_elapsed = end_time - start_time

    return {
        "time_elapsed": time_elapsed,
        "vacuum_success": True,
    }
