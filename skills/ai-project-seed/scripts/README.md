# Scripts for ai-project-seed

## bootstrap_eval_workspace.ps1
Creates iteration and eval folders for side-by-side testing.

Example:

```powershell
./bootstrap_eval_workspace.ps1 \
  -RootPath ./eval-workspace \
  -IterationName iteration-1 \
  -EvalNames "seed-basic","seed-wp","seed-impact"
```
