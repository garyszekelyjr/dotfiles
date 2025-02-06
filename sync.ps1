Remove-Item $HOME\.wezterm.lua -Force

Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force

New-Item -ItemType SymbolicLink -Path $HOME\.wezterm.lua -Target $PSScriptRoot\wezterm\.wezterm.lua

New-Item -ItemType SymbolicLink -Path $env:LOCALAPPDATA\nvim -Target $PSScriptRoot\nvim
