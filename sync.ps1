rm $HOME\.wezterm.lua -Force

rm -r $env:LOCALAPPDATA\nvim -Force

New-Item -ItemType SymbolicLink -Path $HOME\.wezterm.lua -Target $HOME\.dotfiles\wezterm\.wezterm.lua

New-Item -ItemType SymbolicLink -Path $env:LOCALAPPDATA\nvim -Target $HOME\.dotfiles\nvim
