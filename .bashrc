#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='TERM=st nvim'
alias vi='TERM=st nvim'
alias nvim='TERM=st nvim'
PS1='[\u@\h \W]\$ '

alias icat='kitty icat'

hyfetch

eval "$(starship init bash)"
