#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LS_COLORS="${LS_COLORS}ow=1;97;0:"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sudo='sudo '
alias v='nvim'
alias vi='nvim'
alias cat='bat'
alias wisdom='fortune | cowsay'
alias lw='librewolf '
alias zn='zen-browser '
alias icat='kitty icat'
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

PS1='[\u@\h \W]\$ '
#PS1='[\[\033[38;2;166;227;161m\]\u\[\033[0m\]@\[\033[38;2;137;180;250m\]\h\[\033[0m\]:\[\033[38;2;249;226;175m\]\w\[\033[0m\]]\[\033[38;2;205;214;244m\]\$ \[\033[0m\]'

#hyfetch

eval "$(starship init bash)"
