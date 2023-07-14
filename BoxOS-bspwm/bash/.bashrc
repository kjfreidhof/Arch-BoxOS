#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# for tty 1
if [[ $(tty) = /dev/tty1 ]]; then
	setfont ter-132n
        startx 	

fi

# For tty 2

if [[ $(tty) = /dev/tty2 ]]; then
	setfont ter-132n
	neofetch


fi 


# for terminal 
if [[ $(tty) = /dev/pts/0 ]]; then 
	neofetch 


fi

# aliases 
# cd commands 

alias home='cd ~'
alias root='cd /'
alias pop='cd -'

# ls commands 
alias ll='ls -l'
alias la='ls -a'
alias l='ls -al'
alias lh='ls -alh'
alias lf='ls -alhf'

# mkdir commands 
alias md='mkdir'
alias mdp='mkdir -p'

# cp commands 

alias cpr='cp -r'

# rm commands

alias del='rm -rf'

# disk commands 

alias d='df'
alias dh='df -h'
alias fr='free'
alias fh='free -h'

# date command 

alias da='date'

# essential commands 
alias cls='clear'
alias x='exit'



