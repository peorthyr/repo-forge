---
name: ai-project-scan
description: 'Scan and assess architecture/governance assets in a repository before migration work. Use this for existing or partially structured projects to identify architectural files, detect drift, compare patterns with canonical templates, and decide whether to run ai-project-keeper, ai-project-seed, or no structural refactor.'
argument-hint: 'target=<project-slug|repo-path>, scope=<repo|workbench>, mode=<quick|full>'
---

# AI Project Scan

## Purpose
Analyze a repository architecture state and produce a decision report before structural changes.

Primary outcome:
- inventory of architecture/governance files
- compatibility assessment vs canonical patterns
- recommendation: keep, normalize with keeper, or bootstrap with seed
- optional pattern-assimilation candidates
- intake-pattern assessment when raw request routing is present or missing

This skill is read-first and architecture-only.
It must not edit application code.

## When To Use
Use when project is already populated, partially structured, or legacy.

Trigger examples:
- "scan this repo and tell me what architecture files are usable"
- "audit governance docs before cleanup"
- "compare current structure with your standard and propose action"

If project is truly new and empty, scan can be skipped and seed can start directly.

## Required Inputs
Collect or infer:
- target repo/workbench path
- scan depth: quick or full
- decision objective: keeper normalization, seed bootstrap, or compatibility check only

## Canonical Order
If canonical files conflict:
1. AGENTS.md
2. PLANS.md
3. plans/
4. BACKLOG.md
5. CHANGELOG.md
6. docs/ARCHITECTURE.md
7. adr/

## Procedure
1. Read Context First
- read `BACKLOG.md` when in a managed repository and map scan to a target item
- read `AGENTS.md` and repository-level conventions first

2. Intent Gate
- emit verdict Approve, Challenge, or Clarify
- if Clarify, request only missing blockers

Template: [intent gate](./assets/templates/intent-gate.md)

3. Impact Check
- evaluate potential impact if keeper/seed is applied after scan
- classify L0-L3 using `docs/CHANGE-IMPACT-PROTOCOL.md`

Template: [impact check](./assets/templates/impact-check.md)

4. Inventory and Classification
- locate architecture/governance files (AGENTS, README, plans, ADR, docs, backlog/changelog)
- detect whether the repository has any intake-like rule for classifying raw requests before execution
- classify each file:
  - canonical
  - usable legacy
  - redundant/duplicated
  - obsolete/noise

5. Pattern Comparison
- compare discovered structure with canonical patterns from `architecture_repo/` and existing templates
- evaluate whether existing intake-like behavior is absent, weak, duplicated, or strong enough to keep
- identify compatibility level:
  - compatible (minor normalization)
  - partially compatible (keeper recommended)
  - incompatible or missing architecture (seed recommended)

6. Decision Report
- produce report with:
  - what to keep
  - what to migrate
  - what to deprecate
  - recommended next skill (`ai-project-keeper` or `ai-project-seed`)
  - whether to install, keep, or realign an intake pattern

Template: [scan report](./assets/templates/scan-report-template.md)

Reference: [intake assessment](./references/intake-assessment.md)

7. Pattern Assimilation Candidate
- if a better pattern is found, register candidate with rationale and risk
- do not auto-assimilate into skill package
- require explicit decision: repo-only adoption or global skill update proposal

Template: [pattern candidate](./assets/templates/pattern-candidate-template.md)

8. Finalize
- update `CHANGELOG.md` only if files were actually changed
- register follow-ups in `BACKLOG.md`

## Portable Resources
- workflow stages: [scan workflow stages](./references/workflow-stages.md)
- evaluation guide: [evaluation playbook](./references/evaluation-playbook.md)
- layout rules: [portable layout](./references/portable-layout.md)
- intake assessment guide: [intake assessment](./references/intake-assessment.md)
- scan eval set: [scan evals](./evals/evals.json)
- eval metadata template: [eval metadata](./assets/templates/eval-metadata.json)
- timing template: [timing](./assets/templates/timing.json)
- script usage: [scripts readme](./scripts/README.md)

## Quality Gate
Before marking done, verify:
- inventory is explicit and traceable
- recommendation is justified and actionable
- no non-architectural files modified
- pattern assimilation decision is explicit (keep/adopt/propose)

## Output Contract
Return:
- intent gate verdict
- impact level
- architecture inventory summary
- compatibility assessment
- recommended next skill and rationale
- pattern candidates found (if any)

## Quick Invocation
/ai-project-scan target=my-repo scope=repo mode=full
