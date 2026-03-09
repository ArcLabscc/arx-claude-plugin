---
description: "Search and explore your ARX knowledge graph. Usage: /arx <query>"
allowed-tools: Bash, Read
---

# ARX Knowledge Search

Search your personal knowledge graph by keyword or meaning.

## Arguments

The user provides a search query as an argument (e.g., `/arx authentication patterns`).

## Steps

### 1. Determine search type

If the query looks like a UUID, use `arx get <uuid>`.
If the query starts with `~` or `similar:`, use semantic search.
Otherwise, use keyword search first, then fall back to semantic if no results.

### 2. Run the search

Use the ARX MCP tools available in this session:
- `arx_search` for keyword search
- `arx_similar` for semantic/meaning-based search
- `arx_get` for fetching a specific thought by ID
- `arx_traverse` for walking the graph from a node

### 3. Present results

Show results in a clean format:
- Title/content preview (first 100 chars)
- Created date
- Connection count
- Relevance score (for semantic search)

If there are related nodes, mention them so the user can explore further.
