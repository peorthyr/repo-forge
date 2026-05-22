# Agentic Project Skills

A small suite of agent skills for creating, scanning, maintaining, and routing architecture/governance files in repositories used with coding agents.

These skills do not write application code.
They help repositories become easier for coding agents to understand, plan, and maintain.

## Skills

### ai-project-scan

Analyze an existing repository and report the state of its architecture/governance assets.

### ai-project-seed

Create a new architecture/governance package for an agent-ready repository.

### ai-project-keeper

Maintain, correct, and realign architecture/governance files in an existing repo.

### intake

Classify raw chat requests before they become implementation work.

## Install

Install all skills:

```bash
npx skills add tuo-user/agentic-project-skills --all

Install one skill:

npx skills add tuo-user/agentic-project-skills --skill ai-project-seed

List available skills:

npx skills add tuo-user/agentic-project-skills --list
Repository layout
skills/
  ai-project-scan/
  ai-project-seed/
  ai-project-keeper/
  intake/
Scope

These skills operate on architecture/governance artifacts such as:

AGENTS.md
BACKLOG.md
PLANS.md
CHANGELOG.md
docs/ARCHITECTURE.md
docs/REQUEST-INTAKE.md
plans/
adr/

They are designed for repositories worked on with agents such as Codex, GitHub Copilot, Claude Code, Cursor, and compatible tools.