
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fyle/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

source /home/fyle/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# start

alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(starship init zsh)"

# Aliases

# Others
alias neo='neofetch'

# To view the .zshrc 
alias zs="vim /home/fyle/.zshrc"

# cd commands
alias home='cd ~'
alias root='cd /'
alias pop='cd -'

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
alias pico='sudo vim'
alias c='code'

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
#
alias s='yay -S'
alias ss='yay -Ss'
#
# makepkg
#
 alias mk='makepkg -si'
#
# # git
#
alias clon='git clone'
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
alias stt='cd /home/fyle/git/configs/suckless/st'

# source .zshrc 
alias sz='source /home/fyle/.zshrc'
