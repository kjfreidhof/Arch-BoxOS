#!/bin/bash 

set -e
dmenu="cd suckless/dmenu && sudo make install clean && cd .. && cd .."
st="cd suckless/st && sudo make install clean && cd .. && cd .."
dw="cd suckless/dwm && sudo make install clean && cd .. && cd .."
req=("git" "vim" "polkit-gnome")
x=("xorg-server" "xorg-apps" "xorg-xinit" "sddm")
bsp=("firefox" "nitrogen" "aria2" "picom" "gvfs" "pcmanfm")
audio=("pipewire" "pipewire-audio" "pipewire-alsa" "pipewire-pulse" "sof-firmware" "pavucontrol")
blue=("bluez" "bluez-utils")
fonts="ttf-fira-code"
virt=("virt-manager" "qemu-desktop" "dnsmasq" "iptables-nft" "dmidecode")
flame="flameshot"
eclient="thunderbird"

sudo pacman -S "${req[@]}"

sudo pacman -S "${x[@]}"

sudo pacman -S "${bsp[@]}"

sudo pacman -S "${audio[@]}"

sudo pacman -S "$fonts"

sudo pacman -S "${blue[@]}"

sudo pacman -S "${virt[@]}"

sudo pacman -S "$flame"

sudo pacman -S "$eclient"

"$dmenu"
"$st"
"$dw"


