set DIR ( realpath (status dirname) )

rm -f $HOME/.wezterm.lua

rm -rf $HOME/.lintr
rm -rf $HOME/.config/fish
rm -rf $HOME/.config/nvim
rm -rf "$HOME/Library/Application Support/nushell"

ln -s $DIR/lintr/.lintr $HOME/.lintr
ln -s $DIR/wezterm/.wezterm.lua $HOME/.wezterm.lua
ln -s $DIR/fish $HOME/.config/fish
ln -s $DIR/nushell "$HOME/Library/Application Support/nushell"
ln -s $DIR/nvim $HOME/.config/nvim
