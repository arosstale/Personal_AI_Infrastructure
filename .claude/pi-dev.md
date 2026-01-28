# Pi Development with Git-AI Tracking

Personal AI Infrastructure (PAI) development with Pi + automatic git-ai tracking.

## Usage

Run from repo root:
```bash
pi -p "Your development task here"
```

Pi will:
1. Make changes to the TypeScript/Bun codebase
2. Git-AI will automatically track which AI wrote each line
3. View with: `git blame <file>` or `~/.git-ai/bin/git-ai stats`

## Supported Commands

- `git blame <file>` - See AI authorship
- `~/.git-ai/bin/git-ai stats` - AI contribution metrics
- `~/.git-ai/bin/git-ai diff HEAD~1` - See diffs with AI tags
- `~/.git-ai/bin/git-ai show <id>` - Show prompt details

## Current Status

- **Project**: Personal_AI_Infrastructure (TypeScript/Bun)
- **Type**: AI infrastructure platform with Skills, Hooks, Memory
- **AI Tools**: Pi, Claude Code, git-ai
- **Tracking**: Automatic via git-ai checkpoint on Pi commits
- **Stack**: TypeScript, Bun, MCP integration

Start developing!
