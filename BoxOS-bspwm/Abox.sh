#!/bin/bash 

set -e

req=("git" "vim" "polkit-gnome")
x=("xorg-server" "xorg-apps" "xorg-xinit")
bsp=("bspwm" "polybar" "sxhkd" "rofi" "kitty" "firefox" "nitrogen" "aria2" "picom" "gvfs" "pcmanfm")
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

chmod +x .config/bspwm/bspwmrc
chmod +x .config/polybar/launch.sh
chmod +x .config/sxhkd/sxhkdrc
cp -r .config $HOME
cp bash/.bashrc $HOME
cp bash/.bash_profile $HOME
cp xinit/.xinitrc $HOME


