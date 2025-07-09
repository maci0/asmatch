# asmatch Flowcharts

This document contains Mermaid charts illustrating the core workflows of the `asmatch` tool.

## Add Snippet Flow

This chart describes the process of adding a new snippet to the database.

```mermaid
graph LR
    subgraph "Input"
        A[asmatch add 'name' 'code']
    end

    subgraph "Processing"
        B{Normalize Code & Generate Tokens}
        C{Calculate SHA256 Checksum of Normalized Code}
        D{Snippet with Checksum Exists in DB?}
    end

    subgraph "Existing Snippet Path"
        D -- Yes --> E[Add New Name as Alias to Existing Snippet]
    end

    subgraph "New Snippet Path"
        D -- No --> F{Generate MinHash from Tokens}
        G[Store Snippet in DB: Checksum, Names, Code, MinHash]
        F --> G
    end

    subgraph "Cache Management"
        E --> H{Invalidate LSH Cache}
        G --> H
    end

    subgraph "Output"
        H --> I[Show Confirmation]
    end

    A --> B --> C --> D
```

## Find Matches Flow

This chart illustrates the process of finding similar snippets.

```mermaid
graph LR
    subgraph "Input"
        A[asmatch find --query 'code']
    end

    subgraph "Query Processing"
        B{Normalize Query & Generate MinHash}
    end

    subgraph "LSH Caching"
        C{Load LSH Cache from Disk}
        C -- Cache Miss/Stale --> D{Build LSH Index from All Snippet MinHashes in DB}
        D --> E{Save New LSH Index to Cache on Disk}
        E --> F[LSH Index Ready]
        C -- Cache Hit --> F
    end

    subgraph "Candidate Retrieval"
        F --> G{Query LSH Index with Query MinHash}
        G --> H{Retrieve Candidate Snippets from DB via Checksum}
    end

    subgraph "Ranking & Output"
        H --> I{Rank Candidates with Levenshtein Similarity Score}
        I --> J[Display Top N Matches to User]
    end

    A --> B --> C
```
