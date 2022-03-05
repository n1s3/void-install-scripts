# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

echo 
neofetch

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

alias xix='xbps-install'
alias xiq='xbps-query'

PS1='[\u@\h \W]\$ '
