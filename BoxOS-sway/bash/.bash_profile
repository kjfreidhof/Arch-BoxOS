#
# ~/.bash_profile
#




[[ -f ~/.bashrc ]] && . ~/.bashrc

# if the tty = /dev/tty3 execute the sway window manager 
[ "$(tty)" = "/dev/tty1" ] && exec sway
