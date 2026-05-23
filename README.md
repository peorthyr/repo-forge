# Repo Forge

AI coding agents lose context between sessions. They re-discover your codebase from scratch, make wrong assumptions about your architecture, work from plans that are months out of date, and turn every offhand idea into immediate unplanned implementation. This is not a model problem — it's a structure problem.

Repo Forge fixes it. It builds and maintains the structural files that give agents a stable foundation to work from: architecture notes, decision logs, planning docs, request routing — all accurate, all agent-readable, none of it touching your application code.

**If your repo is vague, your agent will guess. Repo Forge makes sure it doesn't have to.**

## Skills

- **[ai-project-scan](skills/ai-project-scan/SKILL.md)** — *Start here for existing repos.* Audits what architecture context agents currently have, what's missing, and what's worth fixing. Read-only. Produces a decision report.
- **[ai-project-seed](skills/ai-project-seed/SKILL.md)** — *Start here for new repos.* Bootstraps a complete set of architecture and planning files from scratch, so agents have something solid to work with from day one.
- **[ai-project-keeper](skills/ai-project-keeper/SKILL.md)** — *Run regularly.* Detects drift between your architecture files and the actual state of the project, and corrects it before agents start working from outdated assumptions.
- **[intake](skills/intake/SKILL.md)** — *Run before building anything ambiguous.* Classifies a raw request, scopes it, and routes it to the right destination — so every idea becomes a plan, a backlog item, or a decision record instead of immediate unplanned work.

## Install

Install all skills at once:

```bash
npx skills add peorthyr/repo-forge --all
```

Install a single skill:

```bash
npx skills add peorthyr/repo-forge --skill ai-project-seed
```

List available skills:

```bash
npx skills add peorthyr/repo-forge --list
```

## Recommended workflow

1. **New repo?** Run `ai-project-seed` to bootstrap governance files.
2. **Existing repo?** Run `ai-project-scan` first to understand what you have, then `ai-project-keeper` to fix drift.
3. **Got a new idea or request?** Run `intake` before anything else to classify and route it properly.
4. **Ongoing maintenance?** Run `ai-project-keeper` periodically as the project evolves.

## What it manages

Repo Forge works on the structural files that agents read for context — not your application code:

| File | What it's for |
|------|--------------|
| `AGENTS.md` | Instructions for agents working in this repo |
| `docs/ARCHITECTURE.md` | System overview and key design decisions |
| `BACKLOG.md` / `PLANS.md` | What's planned and why |
| `CHANGELOG.md` | What has changed |
| `docs/REQUEST-INTAKE.md` | How to route and scope new requests |
| `plans/`, `adr/` | Detailed plans and architecture decision records |

Works with GitHub Copilot, Claude Code, Cursor, Codex, and other agent tooling.

## Repository Layout

```text
skills/
  ai-project-seed/
  ai-project-scan/
  ai-project-keeper/
  intake/
```

[![skills.sh](https://skills.sh/b/peorthyr/repo-forge)](https://skills.sh/b/peorthyr/repo-forge)