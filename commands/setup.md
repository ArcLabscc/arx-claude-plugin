---
description: "Set up or reconfigure your ARX connection. Usage: /setup"
allowed-tools: Bash, Read, Edit
---

# ARX Setup

Configure your ARX connection. Run this if you haven't logged in yet or need to switch accounts.

## Steps

### 1. Check existing config

```bash
cat ~/.arx/config.json 2>/dev/null
```

### 2. Run interactive setup

```bash
npx -y @arx/setup
```

This will:
- Prompt for email + password (or create account)
- Authenticate against the ARX server
- Write config to `~/.arx/config.json`
- Configure MCP server in Claude Code settings

### 3. Verify connection

After setup completes, test the connection by using the `arx_list` MCP tool.

If the MCP server isn't available yet, tell the user:
> Setup complete. Type `/restart` to reload Claude Code with ARX connected.
