mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

ln -f -s "$HOME/dotfiles/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config"

ln -f -s "$HOME/dotfiles/sway"
ln -f -s "$HOME/dotfiles/sway" "$HOME/.config/swaylock"
ln -f -s "$HOME/dotfiles/waybar" "$HOME/.config/waybar"
ln -f -s "$HOME/dotfiles/mako" "$HOME/.config/mako"
ln -f -s "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -f -s "$HOME/dotfiles/gammastep" "$HOME/.config/gammastep"

ln -f -s "$HOME/dotfiles/vimrc" "$HOME/.vimrc"
ln -f -s "$HOME/dotfiles/vim" "$HOME/.vim"
ln -f -s "$HOME/dotfiles/alacritty.yml" "$HOME/.alacritty.yml"
