if test -e ~/.wezterm.lua
	rm ~/.wezterm.lua
end

if test -e ~/.tmux.conf
	rm ~/.tmux.conf
end

if test -e ~/.config/fish
	rm -r ~/.config/fish
end

if test -e ~/.config/nvim
	rm -r ~/.config/nvim
end

ln -s $PWD/.wezterm.lua ~/.wezterm.lua
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/fish ~/.config/fish
ln -s $PWD/nvim ~/.config/nvim

