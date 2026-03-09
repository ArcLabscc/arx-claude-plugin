---
name: "arx-context"
description: "Inject relevant ARX knowledge into the current conversation. Use when the user's question might benefit from their personal knowledge graph context."
---

# ARX Context Injection

When the user asks a question that might benefit from their personal knowledge graph, search ARX for relevant context and weave it into your response.

## How to use

1. Identify the key concepts in the user's question
2. Run a semantic search against ARX using `arx_similar`
3. If relevant results exist (score > 0.5), incorporate them naturally
4. Reference the source thought so the user can explore further

## Guidelines

- Don't announce that you're searching ARX — just do it naturally
- Only include context that's actually relevant (don't force-fit)
- If ARX has a decision or pattern that contradicts the current approach, flag it
- Keep context injection concise — a sentence or two, not paragraphs
