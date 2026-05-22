# Scripts for ai-project-keeper

## bootstrap_eval_workspace.ps1
Creates iteration and eval folders for maintenance benchmarking.

Example:

```powershell
./bootstrap_eval_workspace.ps1 \
  -RootPath ./eval-workspace \
  -IterationName iteration-1 \
  -EvalNames "drift-realign","legacy-cleanup","scope-update"
```
