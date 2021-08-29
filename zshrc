fpath+=$HOME/.zsh/pure

## auto comp
autoload -U compinit
compinit
autoload -Uz promptinit
promptinit

prompt pure

## vi bindings
bindkey -v
 
## history related
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
 
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^r' history-beginning-search-backward-end
bindkey '^f' history-beginning-search-forward-end

alias l='ls'
alias ll='ls -la'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=$PATH:/opt/homebrew/bin/:./node_modules/.bin

alias vim="nvim"
alias vi="nvim"
alias kubectl="minikube kubectl --"
alias virtual-screen-recorder="wf-recorder --muxer=v4l2 --codec=rawvideo --pixel-format=yuv420p --file=/dev/video2"

[ -s "/etc/bash_completion.d/" ] && source /etc/bash_completion.d/*

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
