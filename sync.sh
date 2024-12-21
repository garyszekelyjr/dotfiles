if [ -e ~/.config/kitty ]; then
	rm ~/.config/kitty
fi

if [ -e ~/.zshrc ]; then
	rm ~/.zshrc
fi

if [ -e ~/.tmux.conf ]; then
	rm ~/.tmux.conf
fi

if [ -e ~/.config/nvim ]; then
	rm ~/.config/nvim
fi

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/nvim ~/.config/nvim

