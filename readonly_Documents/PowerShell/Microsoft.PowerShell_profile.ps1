Invoke-Expression (& { (zoxide init powershell | Out-String) })
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression