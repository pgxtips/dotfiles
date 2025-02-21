# !/bin/bash 


# -----------------------
#        Functions
# -----------------------
function AlacrittyConfig() {
    if [[ "$(uname)" == "Linux" ]]; then
        echo "alacritty_linux.toml"
    elif [[ "$(uname)" == "Darwin" ]]; then
        echo "alacritty_macos.toml"
    fi
}

echo "removing links"
rm -f $HOME/.zshrc
rm -f $HOME/.config/i3
rm -f $HOME/.config/tmux
rm -f $HOME/.config/scripts
rm -f $HOME/.config/alacritty/alacritty.toml
rm -f $HOME/.config/nvim
echo "done!"

echo "creating neccessary dirs"
mkdir -p "$HOME/.config/alacritty"
echo "done!"

echo "creating symlinks"
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/i3 $HOME/.config/i3
ln -s $HOME/dotfiles/tmux $HOME/.config/tmux
ln -s $HOME/dotfiles/scripts $HOME/.config/scripts
ln -s $HOME/dotfiles/alacritty/$(AlacrittyConfig) $HOME/.config/alacritty/alacritty.toml
ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
echo "done!"
