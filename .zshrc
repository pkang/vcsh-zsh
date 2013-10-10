if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# turn off autocorrect; it's annoying and not really that helpful
unsetopt correct

# disable flow control (to allow Ctrl-s & Ctrl-q)
stty -ixon -ixoff

# make tmux look nicer
alias tmux="TERM=screen-256color-bce tmux"

# I HATE MISSPELLING VIM ARGGGHGHGHG!!!!
alias vi="vim"
alias ivm="vim"
alias imv="vim"
alias miv="vim"
alias mvi="vim"
alias vmi="vim"

alias catc="pygmentize -g"

export PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin
export PATH=$PATH:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/usr/local/share/python/
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

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
