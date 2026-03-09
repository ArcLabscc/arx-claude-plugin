#!/bin/bash
# ARX Session End Hook
# Optionally captures session summary to knowledge graph
# This runs when a Claude Code session ends

CONFIG="$HOME/.arx/config.json"

if [ ! -f "$CONFIG" ]; then
    exit 0
fi

# Session capture is handled by the MCP server's arx_add tool
# during conversation. This hook is a placeholder for future
# automatic session summarization.
exit 0
