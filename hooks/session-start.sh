#!/bin/bash
# ARX Session Start Hook
# Loads recent context from your knowledge graph into the conversation
# This runs automatically when a new Claude Code session begins

CONFIG="$HOME/.arx/config.json"

if [ ! -f "$CONFIG" ]; then
    echo "ARX not configured. Run /setup to connect your knowledge graph."
    exit 0
fi

# Read config
ARX_URL=$(python3 -c "import json; c=json.load(open('$CONFIG')); print(c['endpoint'])" 2>/dev/null)
ARX_KEY=$(python3 -c "import json; c=json.load(open('$CONFIG')); print(c['api_key'])" 2>/dev/null)

if [ -z "$ARX_URL" ] || [ -z "$ARX_KEY" ]; then
    exit 0
fi

# Fetch recent thoughts (last 5)
RECENT=$(curl -s --max-time 3 \
    -H "X-API-Key: $ARX_KEY" \
    "$ARX_URL/api/v2/thoughts?limit=5" 2>/dev/null)

if [ $? -ne 0 ] || [ -z "$RECENT" ]; then
    exit 0
fi

# Output context for the session
echo "ARX CONTEXT"
echo "-------------------------------------------------------------"
echo ""
echo "Recent thoughts from your knowledge graph:"
echo "$RECENT" | python3 -c "
import json, sys
try:
    data = json.load(sys.stdin)
    thoughts = data if isinstance(data, list) else data.get('thoughts', data.get('data', []))
    for t in thoughts[:5]:
        content = t.get('content', '')[:120]
        created = t.get('created_at', '')[:10]
        tid = t.get('id', '')[:8]
        print(f'  [{created}] {content}... ({tid})')
except:
    pass
" 2>/dev/null
echo ""
