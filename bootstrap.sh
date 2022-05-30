mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

ln -f -s "$HOME/dotfiles/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config"

ln -f -s "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -f -s "$HOME/dotfiles/alacritty.yml" "$HOME/.alacritty.yml"
