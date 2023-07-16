#!/bin/bash 

set -e

req=("git" "vim" "polkit-gnome")
x=("xorg-server" "xorg-apps" "xorg-xinit")
sway=("sway" "swaylock" "swayidle" "swaybg" "rofi" "kitty" "firefox" "aria2" "gvfs" "pcmanfm" "brightnessctl")
audio=("pipewire" "pipewire-audio" "pipewire-alsa" "pipewire-pulse" "sof-firmware" "pavucontrol")
blue=("bluez" "bluez-utils")
fonts="ttf-fira-code"
virt=("virt-manager" "qemu-desktop" "dnsmasq" "iptables-nft" "dmidecode")
flame="flameshot"
eclient="thunderbird"
sext=("autotiling" "workstyle")

# xwm="chmod +x .config/bspwm/bspwmrc"
# xpol="chmod +x .config/polybar/launch.sh"
# xsd="chmod +x .config/sxhkd/sxhkdrc"
# conf="cp -r .config ~/"
# bash="cp * bash/ ~/"
mk="cd yay && makepkg -si"

sudo pacman -S "${req[@]}"

sudo pacman -S "${x[@]}"

sudo pacman -S "${sway[@]}"

sudo pacman -S "${audio[@]}"

sudo pacman -S "$font"

sudo pacman -S "${blue[@]}"

sudo pacman -S "${virt[@]}"

sudo pacman -S "$eclient"

# $xwm && $xpol && $xsdl && $conf && $bash && $xin 


echo $sext

read -rp "Do you want to install the following features y/n: " choice

if [ "$choice" = y ]; then
       if ! which yay >> /dev/null; then
	       git clone https://aur.archlinux.org/yay.git
	       $mk
	       yay -s $sext

      else
	      yay -s $sext

	
      fi 

elif [ "$choice" = n ]; then
	exit 



else
	echo "Error: wrong option"
	echo "Please choose y/n"
	exit




fi
