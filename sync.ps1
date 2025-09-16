Remove-Item "$HOME\Documents\PowerShell" -Recurse -Force
Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force
Remove-Item "$HOME\.gitconfig" -Force
Remove-Item "$HOME\.ideavimrc" -Force

New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell" -Target "$PSScriptRoot\powershell"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PSScriptRoot\nvim"
New-Item -ItemType SymbolicLink -Path "$HOME\.gitconfig" -Target "$PSScriptRoot\git\.gitconfig"
New-Item -ItemType SymbolicLink -Path "$HOME\.ideavimrc" -Target "$PSScriptRoot\idea\.ideavimrc"
