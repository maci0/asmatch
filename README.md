# Assembly Code Similarity Search (asmatch)

`asmatch` is a command-line tool designed to find similar assembly code snippets within a database. It uses a combination of hashing and fuzzy string matching to provide fast and accurate results, even when the query is a small fragment of a larger function.

This tool is ideal for tasks such as:
- Identifying known functions from a binary dump.
- Finding code that is structurally similar to a given sample, despite minor differences.
- Building a searchable library of assembly code patterns.

## Core Concepts

### Checksum as Primary Key

Instead of a traditional integer ID, each snippet in the database is identified by a **SHA256 checksum**. This checksum is calculated from the snippet's code after it has been normalized (comments and extra whitespace are removed).

This approach provides several advantages:
- **Content-Addressable:** The ID of a snippet is derived directly from its content.
- **Deduplication:** It is impossible to have two entries with the exact same code, even if they have different names.
- **Stable IDs:** The identifier for a snippet remains the same, even if the database is rebuilt.

## How It Works

The search process is a two-step pipeline designed for both speed and accuracy:

### 1. Fast Candidate Filtering with MinHash and LSH

To avoid the slow process of comparing a query against every single entry in the database, we first perform a fast filtering step to find a small number of likely candidates.

- **Normalization:** The assembly code is first "normalized" by a lexer. This process simplifies the code to its core structure, for example by replacing all register names (e.g., `EAX`, `EBX`) with a generic `REG` token and all immediate values with `IMM`. This makes the comparison robust against simple register or value changes. This behavior can be disabled with the `--no-normalization` flag on the `find` command.

- **MinHash:** Each normalized snippet is converted into a **MinHash**. A MinHash is a compact "fingerprint" of the code. Snippets with similar structures will produce similar MinHash fingerprints.

- **Locality Sensitive Hashing (LSH):** We use a `MinHashLSH` index to store all the MinHashes. This data structure acts like a "bucketing" system. Similar MinHashes are likely to be placed into the same buckets. When you search, we hash your query's MinHash and only retrieve candidates from the buckets it lands in. This is an extremely fast way to narrow down a huge database to a handful of potential matches.

### 2. Accurate Ranking with RapidFuzz

The LSH step gives us a small list of candidates, but it's not perfectly accurate. The second step is to precisely rank these candidates.

- **Fuzzy String Matching:** We use the `rapidfuzz` library to calculate the similarity score between the original query and the full code of each candidate snippet. This comparison is more computationally expensive, but since we only run it on a few candidates, it remains very fast.

- **Ranking:** The candidates are then ranked by their similarity score, and the top results are presented to the user.

## Project Structure

```
asmatch/
├── src/
│   └── asmatch/
│       ├── __init__.py
│       ├── cli.py
│       ├── core.py
│       ├── database.py
│       └── models.py
├── docs/
│   └── user_stories.md
├── tests/
├── .gitignore
├── AGENTS.md
├── README.md
└── setup.py
```

## Setup and Usage

### 1. Installation

It is recommended to install the package in editable mode. This allows you to run the CLI from the command line and ensures that any changes you make to the source code are immediately available.

```bash
pip install -e .
```

### 2. Usage

`asmatch` provides a `kubectl`-style verb-noun interface.

**Examples:**
```bash
# Create a new snippet
asmatch create snippet my_snippet "MOV EAX, 1"

# Get a list of all snippets
asmatch get snippets

# Get database statistics
asmatch db stats

# Re-index the database
asmatch db reindex

# Find similar snippets with a higher threshold
asmatch find --query "MOV EAX" --threshold 0.8

# Find snippets without normalization
asmatch find --file my_func.asm --no-normalization
```

For a detailed breakdown of all commands and features, see the [User Stories](./docs/user_stories.md) or run:
```bash
asmatch --help
```

### 3. Running Tests

To ensure everything is working correctly, you can run the test suite:
```bash
python -m unittest discover tests
```

## Development

For guidelines on contributing to this project, especially when using AI agents, please see [AGENTS.md](./AGENTS.md).
