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
# ensure the target directory exists
mkdir -p "$HOME/.config/alacritty"
if [[ "$(uname)" == "Linux" ]]; then
    ln -s "$HOME/dotfiles/alacritty/alacritty_linux.toml" "$HOME/.config/alacritty/alacritty.toml"
elif [[ "$(uname)" == "Darwin" ]]; then
    ln -s "$HOME/dotfiles/alacritty/alacritty_macos.toml" "$HOME/.config/alacritty/alacritty.toml"
else
    echo "Unsupported OS"
fi

echo "linking nvim"
ln -s $HOME/dotfiles/nvim $HOME/.config/nvim

echo "Finished creating symlinks for dotfiles."
