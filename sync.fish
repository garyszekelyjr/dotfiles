set DIR ( realpath (status dirname) ) 

rm -f $HOME/.tmux.conf
rm -f $HOME/.wezterm.lua
rm -rf $HOME/.config/fish
rm -rf $HOME/.config/nvim

ln -s $DIR/wezterm/.wezterm.lua $HOME/.wezterm.lua
ln -s $DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/fish $HOME/.config/fish
ln -s $DIR/nvim $HOME/.config/nvim
