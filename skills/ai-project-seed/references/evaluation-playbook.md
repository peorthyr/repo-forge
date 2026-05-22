# Seed Evaluation Playbook

Use this loop after each significant edit of ai-project-seed.

## 1. Prepare eval prompts
Start with 3 realistic seed requests.
Use prompts that require meaningful planning and structure decisions.

## 2. Build iteration workspace
Recommended:
- eval-workspace/iteration-N/<eval-name>/with_skill/
- eval-workspace/iteration-N/<eval-name>/without_skill/
- eval-workspace/iteration-N/<eval-name>/eval_metadata.json
- eval-workspace/iteration-N/<eval-name>/timing.json
- eval-workspace/iteration-N/<eval-name>/grading.json

## 3. Run paired executions
For each eval, run:
- with current ai-project-seed
- baseline without skill

## 4. Add assertions where objective
Assertions are useful for:
- required files present
- canonical order respected
- required sections included

Use human review for subjective quality.

## 5. Review and improve
Summarize:
- what improved
- what regressed
- what remains ambiguous

Then update SKILL.md, templates, and references.

## 6. Expand tests
Add near-miss prompts that might incorrectly trigger keeper logic.
Ensure separation between creation and maintenance intents.
