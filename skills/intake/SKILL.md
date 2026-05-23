---
name: intake
description: 'Classify a new request before it becomes unplanned work. Without a triage step, every idea turns into immediate implementation — the agent starts building before the scope is clear, the priority is set, or the impact is understood. Intake stops this: it reads the request, judges its scope and urgency, and routes it to the right destination (do-now, plan, backlog, idea, ADR candidate, analysis-first, defer, or reject). Use this whenever a request is ambiguous, potentially structural, or simply not yet scoped. Trigger on: "I want to add this feature", "I had an idea", "we should also do X", "should we change this convention".'
argument-hint: 'request=<raw request text>'
---

# Intake

## Purpose
Every project accumulates unplanned work the same way: someone says "we should also do X" and the agent starts immediately, before anyone has checked whether X conflicts with an open plan, depends on a decision not yet made, or is simply lower priority than the three things already in progress.

Intake stops that loop. It reads the raw request, judges scope and urgency, and routes it to the right place — so the right work happens at the right time, with the right context, instead of everything becoming immediate implementation.

This skill is conversational and lightweight.
It does not modify files by default.
It does not implement code.

## When To Use
Use when a user brings a new request, idea, change, concern, or direction and it is not obvious whether work should start immediately.

Examples:
- "/intake voglio aggiungere questa feature"
- "/intake mi e venuta un'idea"
- "/intake secondo me dovremmo cambiare questa convenzione"

Do not use this for tiny, local, reversible tasks that are obviously safe to do immediately.

## Procedure
1. Parse the request
- identify if it is a task, idea, architectural decision, research need, cleanup, priority change, or out-of-scope ask

2. Judge scope and urgency
- local vs cross-surface
- reversible vs risky
- urgent vs deferrable
- clear vs ambiguous

3. Route the request
Use one primary classification:
- `do-now`
- `plan`
- `backlog`
- `idea`
- `brainstorm`
- `adr-candidate`
- `analysis-first`
- `defer`
- `reject`

4. Suggest next step
- say what should happen next
- if the repo is structured, suggest the artifact destination
- if the request concerns existing architecture state, suggest `ai-project-scan`
- if the repo is new and the need is architectural scaffolding, suggest `ai-project-seed`
- if the repo already has architecture files that need realignment, suggest `ai-project-keeper`

## Output Format
Return a short classification report with:
- request type
- scope and urgency
- primary route
- why this route is appropriate
- next step
- target artifact if applicable

Template: [intake response template](./assets/templates/intake-response-template.md)

## Portable Resources
- routing matrix: [routing matrix](./references/routing-matrix.md)
- eval prompts: [intake evals](./evals/evals.json)

## Quality Guard
- do not modify files by default
- do not convert every idea into implementation
- do not overcomplicate simple local tasks
- if architecture, scope, data, flow, or governance changes are involved, classify before acting

## Quick Invocation
/intake voglio fare una modifica al progetto e non so se va fatta subito o pianificata
