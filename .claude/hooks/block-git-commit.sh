#!/usr/bin/env bash
# .claude/hooks/block-git-commit.sh
# Blocks an agent from committing or rewriting history. The author is the only committer:
# this repository is a knowledge and IP expression, and every change is read and signed off
# by hand before it enters the record.
set -euo pipefail

cmd=$(echo "$CLAUDE_TOOL_INPUT" | jq -r '.command // ""' 2>/dev/null || echo "")

if echo "$cmd" | grep -qE '^\s*git\s+commit'; then
    echo "BLOCKED: agents must not run git commit. Stage with 'git add', run 'sh zoo/cleanroom-check', propose a commit message, and let the author commit." >&2
    exit 2
fi

if echo "$cmd" | grep -qE '^\s*git\s+(push\s+(-f|--force)|reset\s+--hard|filter-branch|rebase|clean\s+-f)'; then
    echo "BLOCKED: history rewrites and destructive git operations are reserved for the author." >&2
    exit 2
fi

exit 0
