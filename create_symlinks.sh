# !/bin/bash 
echo "Creating symlinks for dotfiles..."

echo "linking .zshrc"
ln -s $HOME/dotfiles/.zshrc ~/.zshrc

echo "linking i3"
ln -s $HOME/dotfiles/i3 ~/.config/i3

echo "linking tmux"
ln -s $HOME/dotfiles/tmux ~/.config/tmux

echo "linking scripts"
ln -s $HOME/dotfiles/scripts ~/.config/scripts

echo "linking alacritty"
ln -s $HOME/dotfiles/alacritty ~/.config/alacritty

echo "linking nvim"
ln -s $HOME/dotfiles/nvim ~/.config/nvim

echo "Finished creating symlinks for dotfiles."

