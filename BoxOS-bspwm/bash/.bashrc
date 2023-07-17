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



# For wayland Display

# if [[ $WAYLAND_DISPLAY = wayland-1 ]]; then
	# wlr-randr --output DP-2 --mode 1280x720

# fi 



# For tty3 

# if [[ $(tty) = /dev/tty ]]; then
#	setfont ter-132n
#	sway

# fi 


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


# text editors

alias vi='vim'
alias v='sudo vim'
alias nano='vim'
alias pico='vim'

# elevate root

alias s='sudo -i'

# poweroff/reboot

alias off='poweroff'
alias re='reboot'
alias shut='sudo shutdown'
alias sn='sudo shutdown now'
alias safe='sudo shutdown -r now'

# pacman 

alias S='sudo pacman -S'
alias Sy='sudo pacman -Sy'
alias Syu='sudo pacman -Syu'
alias Ss='sudo pacman -Ss'
alias Rns='sudo pacman -Rns'

# yay 

alias s='yay -S'
alias ss='yay -Ss'

# makepkg

alias mk='makepkg -si'

# git 

alias clone='git clone'
alias commit='git commit -m'
alias add='git add'
alias status='git status'
alias pull='git pull'
alias push='git push -u origin main'
alias Alpha='git branch -m Alpha'
alias beta='git branch -m beta'
alias main='git branch -m main'
alias pa='git push -u origin Alpha'
alias pb='git push -u origin beta'

# autocd 

shopt -s autocd
