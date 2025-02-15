# !/bin/bash 
echo "Creating symlinks for dotfiles..."

echo "linking .zshrc"
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

echo "linking i3"
ln -s $HOME/dotfiles/i3 $HOME/.config/i3

echo "linking tmux"
ln -s $HOME/dotfiles/tmux $HOME/.config/tmux

echo "linking scripts"
ln -s $HOME/dotfiles/scripts $HOME/.config/scripts

echo "linking alacritty"
ln -s $HOME/dotfiles/alacritty $HOME/.config/alacritty

echo "linking nvim"
ln -s $HOME/dotfiles/nvim $HOME/.config/nvim

echo "Finished creating symlinks for dotfiles."

