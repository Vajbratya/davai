# DAVAI

```
██████╗  █████╗ ██╗   ██╗ █████╗ ██╗
██╔══██╗██╔══██╗██║   ██║██╔══██╗██║
██║  ██║███████║██║   ██║███████║██║
██║  ██║██╔══██║╚██╗ ██╔╝██╔══██║██║
██████╔╝██║  ██║ ╚████╔╝ ██║  ██║██║
╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚═╝

давай, ральф, давай! 🚀
```

**Autonomous AI Coding Orchestrator with Interactive TUI**

DAVAI is a powerful CLI tool that turns feature descriptions into working code using AI. It breaks down your requirements into atomic stories, implements them one by one, verifies each change, and commits automatically.

## Features

- **Interactive TUI** - Beautiful terminal interface with keyboard navigation
- **AI-Powered Planning** - Generates implementation plans from natural language
- **Story-Based Execution** - Breaks features into atomic, verifiable tasks
- **Parallel Execution** - Run multiple stories simultaneously with git worktrees
- **Real-Time Dashboard** - Web-based progress monitoring
- **Automatic Verification** - Typecheck, tests, lint on every change
- **Self-Healing** - Automatically splits stories that fail repeatedly
- **Webhook Notifications** - Slack, Discord, and generic webhook support

## Quick Install

```bash
# Download and install
curl -fsSL https://raw.githubusercontent.com/vajbratya/davai/main/davai -o davai
chmod +x davai
./davai --install

# Or one-liner
curl -fsSL https://raw.githubusercontent.com/vajbratya/davai/main/davai | bash -s -- --install
```

## Requirements

- `bash` 4.0+
- `jq` - JSON processor
- `git` - Version control
- `python3` - For dashboard server
- `claude` - [Claude Code CLI](https://github.com/anthropics/claude-code)

### Install Requirements (macOS)

```bash
brew install jq git python3
npm install -g @anthropic-ai/claude-code
```

### Install Requirements (Ubuntu/Debian)

```bash
sudo apt install jq git python3
npm install -g @anthropic-ai/claude-code
```

## Usage

### Launch TUI

```bash
davai
```

### CLI Options

```bash
davai                     # Launch interactive TUI
davai --install [DIR]     # Install globally (default: ~/.local/bin)
davai --uninstall         # Remove global installation
davai --onboarding        # Run onboarding tutorial again
davai --reset-onboarding  # Reset onboarding state
davai --version           # Show version
davai --help              # Show help
```

## First Run

When you first run DAVAI, you'll be guided through an interactive onboarding that:

1. **Checks requirements** - Verifies all dependencies are installed
2. **Detects your project** - Identifies your tech stack and tooling
3. **Explains modes** - Safe mode vs YOLO mode
4. **Shows workflow** - How DAVAI breaks down and implements features
5. **Teaches shortcuts** - Keyboard navigation

## Workflow

1. **Describe your feature** - "Add user authentication with OAuth"
2. **DAVAI generates stories** - Breaks it into atomic, testable tasks
3. **AI implements each story** - Claude writes the code
4. **Automatic verification** - Typecheck, tests, lint
5. **Auto-commit on success** - Each story gets its own commit
6. **PR summary generated** - Ready for review

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `↑/↓` or `j/k` | Navigate |
| `Enter` | Select/confirm |
| `Escape` | Go back |
| `q` | Quit |
| `?` | Help |
| `Space` | Toggle option |
| `r` | Retry/reset |
| `f` | Filter (logs) |
| `d` | Dashboard |
| `l` | Logs |
| `s` | Stories |
| `p` | Pause |

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `RALPH_CLAUDE` | `claude` | Claude CLI binary |
| `RALPH_MODEL` | - | Model override |
| `RALPH_MAX_ITER` | `100` | Maximum iterations |
| `RALPH_MAX_TRIES` | `3` | Max attempts per story |
| `RALPH_PARALLEL` | `1` | Parallel agents |
| `RALPH_TIMEOUT` | `600` | Timeout in seconds |
| `RALPH_SAFE` | `1` | Safe mode (ask permissions) |
| `RALPH_VERIFY` | `1` | Run verification |
| `RALPH_DASHBOARD` | `1` | Enable web dashboard |
| `RALPH_DASHBOARD_PORT` | `3333` | Dashboard port |
| `RALPH_WEBHOOK` | - | Webhook URL |
| `RALPH_PUBLIC` | `0` | Public tunnel for dashboard |

## Operating Modes

### Safe Mode (Default)
- AI asks permission before making changes
- Best for learning and sensitive projects

### YOLO Mode
Run with maximum autonomy:
```bash
RALPH_SAFE=0 RALPH_PARALLEL=4 davai
```
- Skips permission prompts
- Parallel story execution
- Auto-approve all changes

## Dashboard

DAVAI includes a real-time web dashboard showing:
- Overall progress
- Current story being worked on
- Live AI output stream
- Story status list
- System logs

Access at `http://localhost:3333` when running.

### Public Dashboard

Expose your dashboard publicly (requires `cloudflared` or `ngrok`):

```bash
RALPH_PUBLIC=1 davai
```

## Project Structure

DAVAI creates a `.ralph/` directory in your project:

```
.ralph/
├── prd.json          # Generated stories and state
├── ralph.log         # Execution log
├── memory.md         # Learning from successes/failures
├── pr_summary.md     # Auto-generated PR description
├── usage.jsonl       # Token usage tracking
├── events.jsonl      # Dashboard events
└── attempts/         # Per-story attempt logs
```

## Supported Stacks

DAVAI auto-detects and configures for:

- **Node.js** - npm, yarn, pnpm, bun
- **Python** - pip, poetry, pipenv, uv
- **Rust** - cargo
- **Go** - go modules
- **Ruby** - bundler

## Webhook Notifications

### Slack

```bash
RALPH_WEBHOOK="https://hooks.slack.com/services/..." davai
```

### Discord

```bash
RALPH_WEBHOOK="https://discord.com/api/webhooks/..." davai
```

## License

MIT License - See [LICENSE](LICENSE) for details.

## Contributing

Contributions welcome! Please open an issue or PR.

---

**давай, ральф, давай!** 🚀
