Remove-Item "$HOME\Documents\PowerShell" -Recurse -Force && New-Item -ItemType SymbolicLink -Path "$HOME\Documents\PowerShell" -Target "$PSScriptRoot\powershell"
Remove-Item "$HOME\.gitconfig" -Force                    && New-Item -ItemType SymbolicLink -Path "$HOME\.gitconfig" -Target "$PSScriptRoot\git\.gitconfig"
Remove-Item "$HOME\.ideavimrc" -Force                    && New-Item -ItemType SymbolicLink -Path "$HOME\.ideavimrc" -Target "$PSScriptRoot\idea\.ideavimrc"
Remove-Item "$HOME\.wslconfig" -Force                    && New-Item -ItemType SymbolicLink -Path "$HOME\.wslconfig" -Target "$PSScriptRoot\wsl\.wslconfig"
