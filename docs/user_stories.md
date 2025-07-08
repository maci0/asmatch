# User Stories

This document outlines the features of the `asmatch` CLI from a user's perspective.

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
- The LSH cache is used to speed up searches.
- The user can disable normalization with `--no-normalization`.

---

### Title: Add a new code snippet or alias

**As a** security researcher,
**I want to** use the `add` command to add a new, named assembly function to the central database,
**so that** my team and I can find it later.

**Acceptance Criteria:**
- `asmatch add <name> "<code>"` adds a new snippet.
- If the code already exists, the new name is added as an alias to the existing snippet.

---

### Title: Manage snippet names

**As a** database maintainer,
**I want to** use the `name` command to manage the names associated with a snippet,
**so that I can** keep the database organized and up-to-date.

**Acceptance Criteria:**
- `asmatch name add <checksum> <new_name>` adds a new name to an existing snippet.
- `asmatch name remove <checksum> <name_to_remove>` removes a name from a snippet.
- The tool prevents removing the last name from a snippet.

---

### Title: Bulk-import a directory of code snippets

**As a** malware analyst,
**I want to** use the `import` command to import an entire directory of `.asm` files,
**so that I can** quickly build a searchable library from my existing collection.

**Acceptance Criteria:**
- `asmatch import <directory>` imports all `.asm` and `.txt` files.
- The filename (without extension) is used as the snippet name.
- The user is prompted for confirmation before the import begins.
- The user can bypass the confirmation prompt with the `--force` flag.

---

### Title: Export all snippets to a directory

**As a** user,
**I want to** use the `export` command to save all snippets to a directory,
**so that I can** easily back up or share my database.

**Acceptance Criteria:**
- `asmatch export <directory>` exports all snippets to the specified directory.
- Each snippet is saved as a separate `.asm` file.
- The filename is the primary name of the snippet.
- The user is prompted for confirmation before the export begins.
- The user can bypass the confirmation prompt with the `--force` flag.

---

### Title: Compare two code snippets

**As a** security researcher,
**I want to** use the `compare` command to see a detailed comparison of two snippets,
**so that I can** understand their structural and code-level similarities.

**Acceptance Criteria:**
- `asmatch compare <checksum1> <checksum2>` displays a side-by-side comparison.
- The comparison includes Jaccard similarity, Levenshtein score, and shared token count.
- The output is color-coded for readability.
- The user can disable colored output with the `--no-color` flag.
- The output can be formatted as JSON with `--json`.

---

### Title: Clean the database and cache

**As a** user,
**I want to** use the `clean` command to remove dangling cache files and optimize the database,
**so that I can** ensure the tool is running efficiently.

**Acceptance Criteria:**
- `asmatch clean` removes all LSH cache files from the current directory.
- `asmatch clean` vacuums the database to reclaim unused space.

---

### Title: Remove a snippet

**As a** database maintainer,
**I want to** use the `rm` (or `del`) command to remove an obsolete or incorrect snippet,
**so that** the search results remain clean and accurate.

**Acceptance Criteria:**
- `asmatch rm <checksum>` removes a snippet from the database.
- The tool prompts for confirmation before deleting.

---

### Title: Get database statistics

**As a** user,
**I want to** use the `stats` command to see high-level statistics about the database,
**so that I can** understand the size and complexity of the dataset.

**Acceptance Criteria:**
- `asmatch stats` displays the total number of snippets, average snippet size, vocabulary size, and average in-dataset similarity.
- The output can be formatted as JSON with `--json`.

---

### Title: Re-index the database

**As a** developer,
**I want to** use the `reindex` command to recalculate all MinHashes,
**so that I can** apply changes to the hashing or normalization algorithm to all existing entries.

**Acceptance Criteria:**
- `asmatch reindex` recalculates all hashes.
- The user is prompted for confirmation before starting.
- The tool displays statistics about the re-indexing process.

---

### Title: Manage user configuration

**As a** power user,
**I want to** use the `config` command to manage my default settings,
**so that I can** customize the tool's behavior without using flags for every command.

**Acceptance Criteria:**
- `asmatch config path` shows the location of the config file.
- `asmatch config list` displays the current settings.
- `asmatch config set <key> <value>` sets a new default value.
- The tool reads default values for `lsh_threshold` and `top_n` from `~/.config/asmatch/config.toml`. This location can be changed with the `ASMATCH_CONFIG_DIR` environment variable.

---

### Title: Perform a quick end-to-end lookup

**As a** new user,
**I want to** add a snippet and immediately search for it,
**so that** I can verify the tool and cache are working.

**Acceptance Criteria:**
- `asmatch add my_snippet "MOV EAX, EBX"` stores the snippet and updates the LSH index.
- `asmatch find --query "MOV EAX, EBX"` returns that snippet among the results.
- Each result includes a similarity score.
