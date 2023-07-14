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


