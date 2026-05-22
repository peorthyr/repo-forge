# Intake Assessment

Use this guide to assess whether a repository already has an intake pattern.

## What To Look For
Signals of intake-like behavior:
- AGENTS or README say when to act immediately vs plan later
- backlog contains idea/parking logic
- docs mention brainstorming before action
- ADR candidates are recognized before implementation
- architecture changes require analysis first

## Quality Levels
### Missing
No clear routing rule. Chat requests likely become immediate work.

### Weak
Some routing exists but is scattered, duplicated, or implicit.

### Strong
There is a readable, lightweight rule that routes requests to backlog/plans/ADR/docs without overengineering.

## Recommendation Logic
- missing -> recommend install via seed or keeper
- weak -> recommend keeper normalization
- strong -> keep and optionally compare with canonical pattern for improvements only

## Pattern Candidate Logic
If the repo has a better intake rule than current standards:
- record candidate pattern
- explain why it is better
- require explicit decision before repo/global assimilation
