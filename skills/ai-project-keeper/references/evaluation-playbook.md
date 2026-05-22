# Keeper Evaluation Playbook

Use this loop after each major keeper update.

## 1. Define eval scenarios
Start with 3 realistic maintenance scenarios:
- governance drift
- legacy mismatch
- stale duplicate cleanup

## 2. Build iteration workspace
Recommended:
- eval-workspace/iteration-N/<eval-name>/with_skill/
- eval-workspace/iteration-N/<eval-name>/without_skill/
- eval-workspace/iteration-N/<eval-name>/eval_metadata.json
- eval-workspace/iteration-N/<eval-name>/timing.json
- eval-workspace/iteration-N/<eval-name>/grading.json

## 3. Run paired executions
For each scenario:
- with current ai-project-keeper
- baseline without skill

## 4. Assertions and review
Use objective assertions for:
- required files updated
- backlog follow-up tracking present
- changelog updates constrained to actual work

Use human review for quality and appropriateness of cleanup.

## 5. Improve and rerun
Update skill instructions, rerun eval set, and compare trends.

## 6. Expand near-miss tests
Include prompts that might incorrectly trigger seed behavior.
Ensure strict keeper intent on existing repositories.
