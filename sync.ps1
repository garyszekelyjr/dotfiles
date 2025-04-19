Remove-Item "$HOME\Documents\PowerShell" -Recurse -Force
Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force

New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell" -Target "$PSScriptRoot\powershell"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PSScriptRoot\nvim"
