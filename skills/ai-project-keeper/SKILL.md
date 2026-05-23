---
name: ai-project-keeper
description: 'Keep your repo architecture files accurate and aligned as the project evolves. Governance drift is the silent killer of agent-first workflows — AGENTS.md describes a structure that no longer exists, plans reference decisions that changed, backlog has orphaned items. Keeper detects this drift and corrects it. Use on any existing repo that has architecture files but they have fallen out of sync. Trigger on: "review and clean this architecture workspace", "update AGENTS and plans after scope change", "remove drift between architecture docs and backlog", "add intake rules so ideas stop becoming immediate implementation work".'
argument-hint: 'target=<project-slug>, goal=<review|update|cleanup>, scope=<workbench|repo>'
---

# AI Project Keeper

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
Architecture files go stale. A plan written three months ago might reference modules that no longer exist. An AGENTS.md might describe conventions the team quietly abandoned. A backlog might list items that were completed but never struck off.

When agents read stale context, they produce stale work — they follow outdated conventions, re-implement decisions already made, or miss the current priorities entirely.

Keeper detects this drift and corrects it: aligning governance files with the actual state of the project, cleaning stale guidance, relocating decisions to their canonical homes, and ensuring agents always have an accurate picture to work from.

Primary outcome:
- reduced documentation drift
- aligned governance files (AGENTS, BACKLOG, PLANS, ARCHITECTURE, ADR)
- explicit residual debt tracking
- measurable maintenance quality over iterations
- optional intake pattern added or realigned when request triage is missing or inconsistent

This skill never edits application code.
It only edits architecture/governance assets.

## When To Use
Use this skill for existing repositories and corrective workflows.

Recommended: run `ai-project-scan` first for explicit inventory and compatibility analysis.

Trigger examples:
- "review and clean this architecture workspace"
- "update AGENTS and plans after scope change"
- "remove drift between architecture docs and backlog"
- "audit and improve governance maintenance process"
- "add intake rules so chat ideas do not become immediate implementation"

Do not use this skill for first-time project bootstrap.
For initial creation, use ai-project-seed.

## Required Inputs
Collect or infer:
- target project slug
- maintenance goal: review, update, cleanup
- scope: workbench or repository level
- known drift points or symptoms

If core context is missing, ask concise blocking questions.

Reference: [keeper workflow stages](./references/workflow-stages.md)

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
- read `BACKLOG.md` and select target item(s) before implementation in managed repositories
- inspect existing architecture files (`AGENTS`, `README`, plans, ADR, docs) before proposing replacements
- preserve all relevant architectural information; migrate and normalize instead of dropping context

2. Intent Gate
- emit verdict Approve, Challenge, or Clarify
- if Clarify, pause and request missing constraints

Template: [intent gate](./assets/templates/intent-gate.md)

3. Impact Check
- map primary and secondary surfaces
- classify L0-L3
- for L2/L3, add explicit analysis and follow-up items
- follow repository protocol in `docs/CHANGE-IMPACT-PROTOCOL.md`

Template: [impact check](./assets/templates/impact-check.md)

4. Plan Rule (mandatory when needed)
- if work is multi-step, cross-surface, or structural, create a plan in `plans/` using `PLANS.md`
- use naming convention `plans/PLAN-YYYY-MM-DD-<slug>.md`

5. Corrective Workspace Strategy
Default path:
- workbench/<project-slug>/

Minimum corrective structure:
- README.md
- incoming/
- analysis/
- corrections/
- deliverable/

6. Execute Maintenance
- map legacy assets to canonical structure
- realign AGENTS/BACKLOG/PLANS/ARCHITECTURE/ADR consistency
- clean stale or duplicated guidance
- capture unresolved misalignments in backlog
- behave like a workbench migration: keep traceability from old files to new canonical files
- do not lose historical decisions; relocate them to proper canonical destinations

7. Add or Realign Intake Pattern When Useful
- detect whether the repository already has a rule for classifying raw requests before action
- if missing or weak, add a lightweight intake pattern integrated with existing governance files
- if present but noisy, normalize it instead of creating a second intake system
- preserve any useful triage logic already present in `README`, `AGENTS`, notes, or other architecture files

Reference: [intake pattern](./references/intake-pattern.md)

8. Run Evaluation Loop
- maintain scenarios in [evals/evals.json](./evals/evals.json)
- run with-skill and without-skill baselines
- record timing and quality notes for each scenario
- revise keeper instructions from evidence
- expand tests with near-miss prompts that should not trigger seed behavior

Reference: [evaluation playbook](./references/evaluation-playbook.md)

9. Validate
- internal references consistent
- canonical documents aligned
- regression checks explicit for touched surfaces
- no hidden residual drift
- no destructive edits in `architecture_repo/` unless explicitly requested
- no edits to non-architectural files
- if intake exists, its routing rules are aligned with backlog/plans/ADR/docs and not duplicated elsewhere

10. Finalize
- update CHANGELOG.md with executed actions only
- register unfinished tasks in BACKLOG.md
- propose ADR for stable structural policy updates
- if normalized pattern is stable and reusable, propose promotion to `architecture_repo/`

11. Pattern Assimilation Decision
- when better patterns are discovered in existing repositories, create a decision note:
	- keep current keeper behavior
	- adopt pattern in repository scope
	- propose global skill update
- require explicit human decision before assimilating into the skill package

## Portable Resources
- layout guide: [portable layout](./references/portable-layout.md)
- intake pattern reference: [intake pattern](./references/intake-pattern.md)
- report template: [keeper report template](./assets/templates/keeper-report-template.md)
- installable intake template: [repo intake template](./assets/templates/repo-intake-template.md)
- optional brainstorm template: [brainstorm template](./assets/templates/brainstorm-template.md)
- eval docs: [evals readme](./evals/README.md)
- eval prompts: [keeper evals](./evals/evals.json)
- eval metadata template: [eval metadata](./assets/templates/eval-metadata.json)
- timing template: [timing](./assets/templates/timing.json)
- script usage: [scripts readme](./scripts/README.md)

## Quality Gate
Before marking done, verify:
- drift findings are explicit and traceable
- canonical alignment restored or residual debt logged
- cleanup actions are justified (not destructive by default)
- eval loop executed or explicitly deferred by user
- changelog reflects performed actions only

## Completion Criteria
Execution is complete only if:
- maintenance scope is explicit
- intent and impact checks are documented
- updates are coherent across canonical files
- follow-ups are tracked with no hidden drift

## Output Contract
Return:
- intent gate verdict
- impact level and surfaces
- files updated and cleanup actions
- validation result
- residual debt and follow-ups

## Quick Invocation
/ai-project-keeper target=legacy-repo goal=cleanup scope=workbench
