#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sudo='sudo '
alias v='nvim'
alias vi='nvim'
alias cat='bat'
alias wisdom='fortune | cowsay'
PS1='[\u@\h \W]\$ '

alias icat='kitty icat'

hyfetch

eval "$(starship init bash)"
