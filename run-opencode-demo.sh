#!/usr/bin/env bash
set -euo pipefail

# Launch OpenCode with a minimal demo-specific XDG config directory.
# This avoids loading most user-level OpenCode agents/commands/instructions from ~/.config/opencode
# on installations that honor XDG_CONFIG_HOME.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

export XDG_CONFIG_HOME="$SCRIPT_DIR/.demo-xdg"
mkdir -p "$XDG_CONFIG_HOME/opencode"

cat > "$XDG_CONFIG_HOME/opencode/opencode.json" <<'JSON'
{
  "$schema": "https://opencode.ai/config.json",
  "share": "disabled",
  "instructions": []
}
JSON

exec opencode "$@"
