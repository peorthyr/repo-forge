# Repo Forge

Coding agents lose context between sessions. Repo Forge fixes that by building and maintaining the structural files that let agents stay oriented — architecture notes, decision logs, planning docs, request routing — without touching a single line of app code.

If your repo is vague, your agent will guess. Repo Forge makes sure it doesn't have to.

## Skills

- **[ai-project-seed](skills/ai-project-seed/SKILL.md)** — Start from scratch. Bootstraps a complete set of architecture and planning files for a new or unstructured repo, so agents have something solid to work with from day one.
- **[ai-project-scan](skills/ai-project-scan/SKILL.md)** — See what's there. Audits an existing repo and reports what context agents currently have, what's missing, and what's worth improving.
- **[ai-project-keeper](skills/ai-project-keeper/SKILL.md)** — Stay current. Detects drift between your architecture files and the actual state of the project, and suggests corrections before agents start working from outdated assumptions.
- **[intake](skills/intake/SKILL.md)** — Route before you build. Classifies a raw request, scopes it, and routes it to the right skill before it becomes unplanned implementation work.

## Install

Install all skills:

```bash
npx skills add peorthyr/repo-forge --all
```

Install one skill:

```bash
npx skills add peorthyr/repo-forge --skill ai-project-seed
```

List available skills:

```bash
npx skills add peorthyr/repo-forge --list
```

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