param(
    [Parameter(Mandatory=$true)]
    [string]$RootPath,

    [Parameter(Mandatory=$true)]
    [string]$IterationName,

    [Parameter(Mandatory=$true)]
    [string[]]$EvalNames
)

$iterationPath = Join-Path $RootPath $IterationName
if (-not (Test-Path $iterationPath)) {
    New-Item -ItemType Directory -Path $iterationPath | Out-Null
}

foreach ($evalName in $EvalNames) {
    $evalPath = Join-Path $iterationPath $evalName
    foreach ($sub in @("with_skill", "without_skill")) {
        $subPath = Join-Path $evalPath $sub
        if (-not (Test-Path $subPath)) {
            New-Item -ItemType Directory -Path $subPath | Out-Null
        }
    }

    $metadataPath = Join-Path $evalPath "eval_metadata.json"
    if (-not (Test-Path $metadataPath)) {
        @"
{
  "eval_id": 0,
  "eval_name": "$evalName",
  "prompt": "",
  "assertions": []
}
"@ | Set-Content -Path $metadataPath -Encoding utf8
    }
}

Write-Host "Keeper eval workspace created at: $iterationPath"
