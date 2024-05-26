#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export EDITOR="code -w"

source "/usr/share/fzf/key-bindings.bash"
source "/usr/share/fzf/completion.bash"

eval "$(starship init bash)"
