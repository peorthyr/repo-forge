# Seed Workflow Stages

Use these stages to create a new agent-first project seed.

## Stage 0 - Capture Intent
Goal: define exactly what the seed must produce.

Collect:
- project context and constraints
- expected deliverable shape
- destination (`output/` by default)
- required governance depth

## Stage 1 - Draft Seed Plan
Goal: define what will be created before writing files.

Checklist:
- target folder and naming
- required canonical files
- core conventions and placeholders
- impact level (L0-L3)

## Stage 2 - Build Structure
Goal: create the minimum viable architecture package.

Must include:
- AGENTS.md
- BACKLOG.md
- CHANGELOG.md
- PLANS.md
- docs/ARCHITECTURE.md
- plans/PLAN-TEMPLATE.md
- adr/ADR-TEMPLATE.md

## Stage 3 - Validate
Goal: ensure coherence and usability.

Checks:
- no broken internal references
- clear TODO placeholders
- canonical order respected
- explicit regression checks for non-trivial changes

## Stage 4 - Evaluate
Goal: test if the seed works on realistic bootstrap requests.

Actions:
- run 2-3 prompts with and without skill
- compare outputs and completeness
- capture timing and token data

## Stage 5 - Iterate
Goal: improve skill instructions from test evidence.

Focus on:
- weak or ambiguous instructions
- repetitive work that should become templates/scripts
- overfit behavior tied to specific prompts
