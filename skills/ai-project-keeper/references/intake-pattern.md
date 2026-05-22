# Intake Pattern

Use this pattern when an existing repository needs a lightweight rule for handling raw requests before they become work.

## Problem Solved
Chat-driven requests often skip classification and become immediate action.
This creates drift, lost ideas, hidden decisions, and weak prioritization.

## Desired Behavior
A raw request should be routed to one of these outcomes:
- do now
- create plan
- add to backlog
- park as idea
- open brainstorming
- mark as ADR candidate
- request analysis first
- defer
- reject/block

## Keeper Guidance
- preserve useful triage logic already present in README, AGENTS, notes, or legacy docs
- normalize duplicated routing rules into one readable intake artifact
- never create a heavy second governance system
- keep intake aligned with existing backlog/plans/ADR/docs

## Recommended Install Shape
- `docs/INTAKE.md`
- optional `docs/BRAINSTORM.md`
- links from `AGENTS.md` when useful
