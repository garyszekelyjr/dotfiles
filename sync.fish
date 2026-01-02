set DIR ( realpath (status dirname) )

rm -rf $HOME/.gitconfig && ln -s $DIR/git/.gitconfig $HOME/.gitconfig
rm -rf $HOME/.config/fish && ln -s $DIR/fish $HOME/.config/fish
rm -rf $HOME/.config/foot && ln -s $DIR/foot $HOME/.config/foot
rm -rf $HOME/.config/hypr && ln -s $DIR/hypr $HOME/.config/hypr
rm -rf $HOME/.config/kitty && ln -s $DIR/kitty $HOME/.config/kitty
rm -rf $HOME/.lintr && ln -s $DIR/lintr/.lintr $HOME/.lintr
rm -rf $HOME/.config/nvim && ln -s $DIR/nvim $HOME/.config/nvim
rm -rf $HOME/.tmux.conf && ln -s $DIR/tmux/.tmux.conf $HOME/.tmux.conf
rm -rf $HOME/.config/waybar && ln -s $DIR/waybar $HOME/.config/waybar
