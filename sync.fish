set DIR ( realpath (status dirname) ) 

if test -e $HOME/.tmux.conf
	rm -f $HOME/.tmux.conf
end

if test -e $HOME/.wezterm.lua
	rm -f $HOME/.wezterm.lua
end

if test -e $HOME/.config/fish
	rm -rf $HOME/.config/fish
end


if test -e $HOME/.config/nvim
	rm -rf $HOME/.config/nvim
end

ln -s $DIR/wezterm/.wezterm.lua $HOME/.wezterm.lua
ln -s $DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/fish $HOME/.config/fish
ln -s $DIR/nvim $HOME/.config/nvim
