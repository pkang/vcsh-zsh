if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# turn off autocorrect; it's annoying and not really that helpful
unsetopt correct

# disable flow control (to allow Ctrl-s & Ctrl-q)
stty -ixon -ixoff

# make tmux look nicer
alias tmux="TERM=screen-256color-bce tmux"

alias zs="zeus start"

alias kitten="pygmentize -g"

export PATH=/usr/local/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH

[[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh

source "${ZDOTDIR:-$HOME}/.zprofile"

bindkey -e
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
bindkey '^R' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward

if [[ -s "${ZDOTDIR:-$HOME}/.goodsearch_env" ]]; then
  source "${ZDOTDIR:-$HOME}/.goodsearch_env"
fi
