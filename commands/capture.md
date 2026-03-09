---
description: "Capture a thought to your ARX knowledge graph. Usage: /capture [TAG] your thought here"
allowed-tools: Bash, Read
---

# Capture Thought

Quickly capture a thought, insight, decision, or pattern to your ARX knowledge graph.

## Arguments

The user provides the thought content. Optionally prefixed with a tag:
- `[INSIGHT]` — Key realization
- `[DECISION]` — Architectural or strategic choice
- `[PATTERN]` — Reusable learning
- `[TASK]` — Action item
- `[QUESTION]` — Open question to revisit

If no tag is provided, default to `[INSIGHT]`.

## Steps

### 1. Format the thought

Add today's date and clean up the content:
```
[TAG] Title (YYYY-MM-DD): Detailed content...
```

### 2. Save to ARX

Use the `arx_add` MCP tool to save the thought.

### 3. Find connections

Use `arx_similar` to find related thoughts. If any are highly relevant (score > 0.6), suggest linking them.

### 4. Confirm

Tell the user the thought was captured and show any suggested connections.
