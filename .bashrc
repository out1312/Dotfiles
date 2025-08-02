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
alias lw='librewolf '
alias icat='kitty icat'
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh" && eval "$(starship init bash)"

PS1='[\u@\h \W]\$ '

#hyfetch

#eval "$(starship init bash)"
