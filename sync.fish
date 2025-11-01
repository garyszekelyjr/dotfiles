set DIR ( realpath (status dirname) )

rm -rf $HOME/.config/fish
rm -rf $HOME/.config/foot
rm -rf $HOME/.config/htop
rm -rf $HOME/.config/kanshi
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/sway
rm -rf $HOME/.config/waybar
rm -rf $HOME/.gitconfig
rm -rf $HOME/.lintr
rm -rf $HOME/.tmux.conf

ln -s $DIR/fish $HOME/.config/fish
ln -s $DIR/foot $HOME/.config/foot
ln -s $DIR/kanshi $HOME/.config/kanshi
ln -s $DIR/htop $HOME/.config/htop
ln -s $DIR/nvim $HOME/.config/nvim
ln -s $DIR/sway $HOME/.config/sway
ln -s $DIR/waybar $HOME/.config/waybar
ln -s $DIR/git/.gitconfig $HOME/.gitconfig
ln -s $DIR/lintr/.lintr $HOME/.lintr
ln -s $DIR/tmux/.tmux.conf $HOME/.tmux.conf
