# Intake Pattern

Use this pattern when a target repository needs a lightweight rule for handling raw requests before they become work.

## Problem Solved
Users often say things like:
- let's make this change
- I had this idea
- add this too

Without intake, the request is treated as immediate implementation.
With intake, the repository classifies the request first.

## Desired Behavior
A raw request can be routed to one of these outcomes:
- do now
- create plan
- add to backlog
- park as idea
- open brainstorming
- mark as ADR candidate
- request analysis first
- defer
- reject/block

## Design Rules
- keep intake lightweight and readable
- do not force intake for tiny, local, reversible work
- integrate with existing artifacts instead of creating a heavy parallel system
- prefer one intake document plus references to existing artifacts

## Typical Destinations
- immediate/local work -> direct execution
- multi-step or risky work -> `plans/`
- prioritized future work -> `BACKLOG.md`
- low-priority idea -> `BACKLOG.md` idea section or equivalent
- fuzzy exploration -> `docs/BRAINSTORM.md` or equivalent note
- architecture decision -> ADR candidate and possibly `adr/`
- unclear impact -> `ai-project-scan` or analysis note first

## Recommended Install Shape
- `docs/INTAKE.md` for routing rules
- optional `docs/BRAINSTORM.md` only if brainstorming is frequent
- links from `AGENTS.md` and/or `README.md` when useful
