#!/usr/bin/env just --justfile

# Personal AI Infrastructure (PAI) development justfile

dev:
    @echo "=== Personal AI Infrastructure (TypeScript/Bun) ==="
    @echo "Install: bun install"
    @echo "Build: bun run build"
    @echo "Dev: bun run dev"
    @echo "Test: bun test"
    @echo ""
    @echo "Develop with Pi:"
    @echo "  just pi 'your task'"
    @echo "  git blame <file>"
    @echo "  git-ai stats"

install:
    bun install

build:
    bun run build

dev-server:
    bun run dev

test:
    bun test

typecheck:
    bun run typecheck

format:
    bun run format

lint:
    bun run lint

quality:
    bun run lint && bun run typecheck && bun test

# Pi + Git-AI integration
pi PROMPT:
    powershell -NoProfile -ExecutionPolicy Bypass -File "$env:USERPROFILE\.claude\scripts\pi-git-ai.ps1" -Prompt "{{PROMPT}}"

pi-interactive:
    powershell -NoProfile -ExecutionPolicy Bypass -File "$env:USERPROFILE\.claude\scripts\pi-git-ai.ps1" -Interactive

# View git-ai tracking
blame FILE:
    ~/.git-ai/bin/git-ai blame {{FILE}}

stats:
    ~/.git-ai/bin/git-ai stats

diff COMMIT="HEAD~1":
    ~/.git-ai/bin/git-ai diff {{COMMIT}}

help:
    @echo "=== Personal AI Infrastructure Justfile ==="
    @echo ""
    @echo "Development:"
    @echo "  just install     - Install dependencies with bun"
    @echo "  just build       - Build project"
    @echo "  just dev-server  - Run dev server"
    @echo "  just test        - Run tests"
    @echo "  just typecheck   - Type check with TypeScript"
    @echo "  just format      - Auto-format code"
    @echo "  just lint        - Run linter"
    @echo "  just quality     - All checks (lint, typecheck, test)"
    @echo ""
    @echo "Pi + Git-AI:"
    @echo "  just pi 'task'        - Run Pi with automatic git-ai tracking"
    @echo "  just pi-interactive   - Interactive Pi session"
    @echo "  just blame <file>     - View AI authorship"
    @echo "  just stats            - AI contribution stats"
    @echo "  just diff <commit>    - View diffs with AI tags"
    @echo ""
    @echo "  Read .claude/pi-dev.md for workflow details"
    @echo ""
    @echo "PAI Stack:"
    @echo "  - TypeScript + Bun runtime"
    @echo "  - Skills system (modular AI capabilities)"
    @echo "  - Hook system (lifecycle events)"
    @echo "  - Memory system (3-tier learning capture)"
    @echo "  - MCP integration (Model Context Protocol)"
