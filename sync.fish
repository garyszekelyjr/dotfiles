if test -d ~/.config
	rm -r ~/.config
end

if test -e ~/.tmux.conf
	rm ~/.tmux.conf
end

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

mkdir ~/.config

ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/nvim ~/.config/nvim

