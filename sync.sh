rm ~/.config/kitty
rm ~/.zshrc

rm ~/.tmux.conf
rm ~/.config/nvim

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/nvim ~/.config/nvim


