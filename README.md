# Repo Forge

Repo Forge is a skill suite for creating, analyzing, and maintaining architecture and governance artifacts in agent-ready repositories.

It does not generate application code. It focuses on repository structure, planning assets, and decision/governance documents that help coding agents work safely and consistently.

## Why

Coding agents work better when repositories expose stable architecture, planning, backlog, decision, and request-routing files.

Repo Forge helps create and maintain those files without turning the skill suite into an application-code generator.

## Skills

- [ai-project-seed](skills/ai-project-seed/SKILL.md): create an initial architecture/governance package for a new or unstructured repo.
- [ai-project-scan](skills/ai-project-scan/SKILL.md): assess an existing repository and report coverage, gaps, and improvement opportunities.
- [ai-project-keeper](skills/ai-project-keeper/SKILL.md): maintain and realign existing architecture/governance files over time.
- [intake](skills/intake/SKILL.md): classify incoming requests before implementation so work is routed and scoped correctly.

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

## Scope

Repo Forge skills are for architecture/governance artifacts such as:

- AGENTS.md
- BACKLOG.md
- PLANS.md
- CHANGELOG.md
- docs/ARCHITECTURE.md
- docs/REQUEST-INTAKE.md
- plans/
- adr/

They are intended for repositories worked on with agent tooling such as GitHub Copilot, Codex, Claude Code, Cursor, and compatible tools.

## Repository Layout

```text
skills/
  ai-project-seed/
  ai-project-scan/
  ai-project-keeper/
  intake/
```