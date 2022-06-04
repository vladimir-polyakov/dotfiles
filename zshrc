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
alias vim="nvim"
alias vi="nvim"
alias kubectl="minikube kubectl --"
setopt complete_aliases # https://unix.stackexchange.com/questions/250314/whats-the-intended-use-case-for-complete-aliases-in-zsh/250489#250489

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -s "/etc/bash_completion.d/" ] && for f in /etc/bash_completion.d/*; do \. $f; done
[ -s "$HOME/.zsh_completion/" ] && for f in ~/.zsh_completion/*; do \. $f; done

# local machine-specific configurations
[ -s "$HOME/.zsh_local" ] && \. "$HOME/.zsh_local"

PATH=$PATH:/opt/homebrew/bin/:./node_modules/.bin:/usr/local/bin:/usr/local/go/bin:~/go/bin
