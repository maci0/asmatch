# User Stories

This document outlines the features of the `asmatch` CLI from a user's perspective, following a `kubectl`-style verb-noun format.

---

### Title: Find a similar code snippet

**As a** reverse engineer,
**I want to** use the `find` command to search for a snippet of assembly code,
**so that I can** quickly identify if it matches a known function in my database.

**Acceptance Criteria:**
- `asmatch find --query "..."` returns a list of the most similar snippets.
- The search is robust against changes in register allocation and immediate values.
- The user can specify the number of results with `--top-n`.
- The user can provide the query from a file with `--file`.
- The output can be formatted as JSON with `--json`.

---

### Title: Create a new code snippet

**As a** security researcher,
**I want to** use the `create snippet` command to add a new, named assembly function to the central database,
**so that** my team and I can find it later.

**Acceptance Criteria:**
- `asmatch create snippet <name> "<code>"` adds a new snippet and returns its checksum.
- The tool prevents creating a snippet with a name that already exists.
- The tool prevents creating a snippet with code that already exists.

---

### Title: Bulk-create snippets from a directory

**As a** malware analyst,
**I want to** use the `create from-dir` command to import an entire directory of `.asm` files,
**so that I can** quickly build a searchable library from my existing collection.

**Acceptance Criteria:**
- `asmatch create from-dir <directory>` imports all `.asm` and `.txt` files.
- The filename (without extension) is used as the snippet name.
- The user is prompted for confirmation before the import begins.

---

### Title: Get a list of code snippets

**As a** user,
**I want to** use the `get snippets` command,
**so that I can** see a list of all the snippets currently in the database.

**Acceptance Criteria:**
- `asmatch get snippets` returns a list of all snippets with their checksum and name.
- The user can specify a range with `--range`.
- The output can be formatted as JSON with `--json`.

---

### Title: Describe a specific code snippet

**As a** developer,
**I want to** use the `describe snippet` command,
**so that I can** see the detailed information for a single snippet, including its full code.

**Acceptance Criteria:**
- `asmatch describe snippet <checksum>` shows the checksum, name, and code for a specific snippet.
- The output can be formatted as JSON with `--json`.

---

### Title: Delete a code snippet

**As a** database maintainer,
**I want to** use the `delete snippet` command to remove an obsolete or incorrect snippet,
**so that** the search results remain clean and accurate.

**Acceptance Criteria:**
- `asmatch delete snippet <name>` removes a snippet by its name.
- The tool prompts for confirmation before deleting.

---

### Title: Update a code snippet

**As a** developer,
**I want to** use the `update snippet` command to modify the code for an existing snippet,
**so that I can** correct errors or add comments without changing its name.

**Acceptance Criteria:**
- `asmatch update snippet <name> "<code>"` updates the code for a named snippet.
- This is a destructive operation that will change the snippet's checksum.

---

### Title: Get database statistics

**As a** user,
**I want to** use the `db stats` command to see high-level statistics about the database,
**so that I can** understand the size and complexity of the dataset.

**Acceptance Criteria:**
- `asmatch db stats` displays the total number of snippets, average snippet size, and vocabulary size.
- The output can be formatted as JSON with `--json`.

---

### Title: Re-index the database

**As a** developer,
**I want to** use the `db reindex` command to recalculate all MinHashes,
**so that I can** apply changes to the hashing or normalization algorithm to all existing entries.

**Acceptance Criteria:**
- `asmatch db reindex` recalculates all hashes.
- The user is prompted for confirmation before starting.
- The tool displays statistics about the re-indexing process.