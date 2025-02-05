set DIR ( realpath (status dirname) ) 

if test -e $HOME/.wezterm.lua
	rm -f ~/.wezterm.lua
end

if test -e $HOME/.tmux.conf
	rm -f ~/.tmux.conf
end

if test -e $HOME/.config/fish
	rm -rf ~/.config/fish
end

if test -e $HOME/.config/nvim
	rm -rf ~/.config/nvim
end

ln -s $DIR/wezterm/.wezterm.lua $HOME/.wezterm.lua
ln -s $DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/fish $HOME/.config/fish
ln -s $DIR/nvim $HOME/.config/nvim
