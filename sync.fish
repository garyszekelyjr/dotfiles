if test -e ~/.tmux.conf
	rm ~/.tmux.conf
end

if test -e ~/.config/fish
	rm -r ~/.config/fish
end

if test -e ~/.config/nvim
	rm -r ~/.config/nvim
end

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/nvim ~/.config/nvim

