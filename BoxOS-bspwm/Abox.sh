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

xwm="chmod +x .config/bspwm/bspwmrc"
xpol="chmod +x .config/polybar/launch.sh"
xsd="chmod +x .config/sxhkd/sxhkdrc"
conf="cp -r .config ~/"
bash="cp * bash/ ~/"
xin="cp * xinit/.xinitrc ~/"

sudo pacman -S "${req[@]}"

sudo pacman -S "${x[@]}"

sudo pacman -S "${bsp[@]}"

sudo pacman -S "${audio[@]}"

sudo pacman -S "$font"

sudo pacman -S "${blue[@]}"

sudo pacman -S "${virt[@]}"

sudo pacman -S "$flame"

sudo pacman -S "$eclient"

$xwm && $xpol && $xsdl && $conf && $bash && $xin 
