---
description: "Semantic recall from your ARX knowledge graph. Usage: /recall what was that idea about..."
allowed-tools: Bash, Read
---

# Semantic Recall

Find thoughts by meaning, not just keywords. Use this when you remember the gist but not the exact words.

## Arguments

The user describes what they're looking for in natural language.

## Steps

### 1. Semantic search

Use the `arx_similar` MCP tool with the user's query.

### 2. Expand context

For the top 3 results, use `arx_edges` to find connected thoughts. This gives the user the neighborhood around each result.

### 3. Present results

Show results grouped by relevance:
- **Strong matches** (score > 0.7): Show full content + connections
- **Related** (score 0.5-0.7): Show title + preview
- **Weak** (score < 0.5): Skip unless fewer than 3 results total

Include the thought ID so the user can dig deeper with `/arx <uuid>`.
