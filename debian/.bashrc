# ~/.bashrc: executed by bash(1) for non-login shells.
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias c='clear'
alias a='bash'
alias top='htop'
HISTCONTROL=ignoreboth
HISTFILESIZE=999999999
HISTSIZE=999999999
PS1="\[\033[38;5;11m\][\h]\[$(tput sgr0)\] \W \[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
