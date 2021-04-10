mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

ln -s ./zshrc "$HOME/.zshrc"

mkdir -p "$HOME/.config"

ln -s ./sway "$HOME/.config/sway"
ln -s ./sway "$HOME/.config/swaylock"
ln -s ./waybar "$HOME/.config/waybar"
ln -s ./mako "$HOME/.config/mako"
ln -s ./nvim "$HOME/.config/nvim"
ln -s ./gammastep "$HOME/.config/gammastep"

ln -s ./vim "$HOME/.vim"
ln -s ./alacritty.yml "$HOME/.alacritty.yml"
