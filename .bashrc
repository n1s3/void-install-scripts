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

PS1='\033[1m\e[37m[\e[35m\u\e[37m@\e[35m\h \e[36m\W\e[37m]\033[0m$ '
