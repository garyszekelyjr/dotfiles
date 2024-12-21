if test -e ~/.config/kitty
	rm ~/.config/kitty
end

if test -e ~/.config/fish
	rm ~/.config/fish
end

if test -e ~/.config/nvim
	rm ~/.config/nvim
end

if test ! -d ~/.config
	mkdir ~/.config
end

if test -e ~/.tmux.conf
	rm ~/.tmux.conf
end

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/fish ~/.config/fish
ln -s ~/.dotfiles/nvim ~/.config/nvim

