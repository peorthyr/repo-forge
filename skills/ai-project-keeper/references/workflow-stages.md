# Keeper Workflow Stages

Use these stages to review, update, and clean existing architecture workspaces.

## Stage 0 - Intake
Goal: identify repository state and drift symptoms.

Collect:
- target path and scope
- known inconsistencies
- expected output quality level

## Stage 1 - Triage and Mapping
Goal: map canonical vs legacy surfaces.

Checklist:
- locate AGENTS/PLANS/BACKLOG/ARCHITECTURE/ADR touchpoints
- identify stale, duplicated, and conflicting content
- classify impact level (L0-L3)

## Stage 2 - Corrective Plan
Goal: decide what to realign now vs later.

Outputs:
- immediate corrections
- deferred follow-ups for backlog
- ADR candidates for structural decisions

## Stage 3 - Execute Maintenance
Goal: apply focused updates with traceable rationale.

Actions:
- align canonical files
- clean duplicate guidance
- reconcile legacy notes with current source of truth

## Stage 4 - Validate
Goal: verify no hidden drift remains.

Checks:
- internal references valid
- canonical order respected
- regression checks explicit
- residual debt tracked

## Stage 5 - Iterate
Goal: improve keeper behavior with evaluation evidence.

Focus:
- missed drift patterns
- over-aggressive cleanup rules
- weak decision criteria
