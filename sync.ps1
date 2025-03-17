Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PSScriptRoot\nvim"
