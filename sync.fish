if test -e ~/.wezterm.lua
	rm -f ~/.wezterm.lua
end

if test -e ~/.tmux.conf
	rm -f ~/.tmux.conf
end

if test -e ~/.config/fish
	rm -rf ~/.config/fish
end

if test -e ~/.config/nvim
	rm -rf ~/.config/nvim
end

ln -s $PWD/wezterm/.wezterm.lua ~/.wezterm.lua
ln -s $PWD/tmux/.tmux.conf ~/.tmux.conf
ln -s $PWD/fish ~/.config/fish
ln -s $PWD/nvim ~/.config/nvim

