Remove-Item "$env:LOCALAPPDATA\nvim" -Recurse -Force
Remove-Item "$env:APPDATA\nushell" -Recurse -Force

New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PSScriptRoot\nvim"
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\nushell" -Target "$PSScriptRoot\nushell"
