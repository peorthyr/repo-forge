---
name: ai-project-seed
description: 'Create a new agent-first project seed with governance files, decision scaffolding, and evaluation workflow. Use this whenever the user asks to bootstrap a new project structure, generate canonical AGENTS/BACKLOG/PLANS/ARCHITECTURE/ADR assets, make a portable template, or iterate the seed quality through test prompts.'
argument-hint: 'target=<slug>, context=<short description>, output=<template destination>'
---

# AI Project Seed

## Table of Contents
1. Purpose
2. When to Use
3. Required Inputs
4. Canonical Order
5. Workflow
6. Portable Resources
7. Quality Gate
8. Completion Criteria
9. Output Contract
10. Quick Invocation

## Purpose
Create a new project architecture seed ready for agent coding workflows, with repeatable governance and quality checks.

Primary outcome:
- a coherent and reusable project structure
- canonical governance documents
- explicit decision and planning scaffolding
- evaluation-ready assets for iterative improvement
- optional intake pattern for classifying raw requests before execution

This skill never develops application code.
It creates and evolves architecture/governance assets only.

## When To Use
Use this skill for new builds only.

If repository is not empty or architecture state is unclear, run `ai-project-scan` first.

Trigger examples:
- "bootstrap a new agent coding project"
- "create a project seed with AGENTS and backlog"
- "generate a reusable architecture template"
- "set up a portable architecture skeleton with evals"
- "create a new repo structure and include lightweight intake rules"

Do not use this skill for corrective maintenance of existing repositories.
For maintenance, use ai-project-keeper.

## Required Inputs
Collect or infer:
- target slug
- context/category
- destination policy
  - output template: output/<context>-vN/
  - repository-level special case if explicitly requested
- constraints (hosting/runtime/delivery)

If critical data is missing, ask concise blocking questions.

Reference: [seed workflow stages](./references/workflow-stages.md)

## Canonical Order
If files conflict, prioritize:
1. AGENTS.md
2. PLANS.md
3. plans/
4. BACKLOG.md
5. CHANGELOG.md
6. docs/ARCHITECTURE.md
7. adr/

## Procedure
1. Read Context First
- read `BACKLOG.md` and select the target item(s) when working in a managed repository
- inspect existing architecture docs before creating new ones
- reuse validated patterns from `architecture_repo/` before inventing a new structure

2. Intent Gate
- emit verdict Approve, Challenge, or Clarify
- if Clarify, stop edits and ask blockers only

Template: [intent gate](./assets/templates/intent-gate.md)

3. Impact Check
- classify impact L0-L3
- for L2/L3, require explicit follow-up tracking
- follow repository protocol in `docs/CHANGE-IMPACT-PROTOCOL.md`

Template: [impact check](./assets/templates/impact-check.md)

4. Plan Rule (mandatory when needed)
- if work is multi-step, cross-surface, or structural, create a plan in `plans/` using `PLANS.md`
- use naming convention `plans/PLAN-YYYY-MM-DD-<slug>.md`

5. Generate Structure
Minimum target structure:
- AGENTS.md
- BACKLOG.md
- CHANGELOG.md
- PLANS.md
- docs/ARCHITECTURE.md
- plans/PLAN-TEMPLATE.md
- adr/ADR-TEMPLATE.md

6. Fill Initial Content
- add compilable TODO placeholders
- include decision and workflow conventions
- keep language operational and non-ambiguous
- preserve existing architecture information if migrating from prototypes instead of overwriting blindly

7. Install Intake Pattern When Useful
- if the project is expected to receive frequent requests, ideas, or scope changes, install a lightweight intake pattern
- use the intake pattern to classify raw requests into: do now, plan, backlog, idea, brainstorming, ADR candidate, analysis first, defer, or reject
- keep intake lightweight; do not force it for small, local, reversible work
- prefer one readable governance artifact over heavy parallel systems

Reference: [intake pattern](./references/intake-pattern.md)

8. Run Evaluation Loop
- maintain prompts in [evals/evals.json](./evals/evals.json)
- run with-skill and without-skill baselines for each prompt
- record timing and result notes per iteration
- revise instructions, templates, and references based on findings
- expand tests with near-miss prompts

Reference: [evaluation playbook](./references/evaluation-playbook.md)

9. Validate
- coherent folders
- no broken references
- canonical docs aligned
- minimum regression checks stated for non-trivial cases
- no destructive edits in `architecture_repo/` unless explicitly requested
- no edits to non-architectural files
- if intake is installed, it is integrated with existing governance files and not duplicated as a parallel process

10. Finalize
- update CHANGELOG.md with performed work only
- add follow-ups to BACKLOG.md when needed
- propose ADR if a structural convention is introduced
- if produced template becomes stable and reusable, propose promotion from `output/` to `architecture_repo/`

11. Pattern Assimilation Decision
- when a new or better architecture pattern is found, create a decision note:
  - keep current skill behavior
  - adopt pattern in repository scope (current workspace)
  - propose global skill update (portable package update)
- never auto-assimilate silently; require explicit decision
- store candidate pattern and rationale in project artifacts before changing skill rules

## Portable Resources
- layout guide: [portable layout](./references/portable-layout.md)
- intake pattern reference: [intake pattern](./references/intake-pattern.md)
- report template: [seed report template](./assets/templates/seed-report-template.md)
- installable intake template: [repo intake template](./assets/templates/repo-intake-template.md)
- optional brainstorm template: [brainstorm template](./assets/templates/brainstorm-template.md)
- eval docs: [evals readme](./evals/README.md)
- eval prompts: [seed evals](./evals/evals.json)
- eval metadata template: [eval metadata](./assets/templates/eval-metadata.json)
- timing template: [timing](./assets/templates/timing.json)
- script usage: [scripts readme](./scripts/README.md)

## Output Contract
Return:
- intent gate verdict
- impact level and impacted surfaces
- created files and directories
- validation result
- follow-ups logged

## Quality Gate
Before marking done, verify:
- canonical files complete
- internal links valid
- placeholders actionable
- eval loop executed or explicitly deferred by user
- changelog updated with executed work only

## Completion Criteria
Execution is complete only if:
- seed structure exists and is coherent
- intent and impact checks are explicit
- validation checks are documented
- follow-ups are tracked (no hidden TODOs)

## Quick Invocation
/ai-project-seed target=my-project context=agent-first template bootstrap
