#!/bin/bash 

set -e

req=("git" "vim" "polkit-gnome" "terminus-font")
x=("xorg-server" "xorg-apps" "xorg-xinit" "xorg-xwayland")
sway=("sway" "swaylock" "swayidle" "swaybg" "rofi" "kitty" "firefox" "aria2" "gvfs" "pcmanfm" "brightnessctl")
audio=("pipewire" "pipewire-audio" "pipewire-alsa" "pipewire-pulse" "sof-firmware" "pavucontrol")
blue=("bluez" "bluez-utils")
fonts="ttf-fira-code"
virt=("virt-manager" "qemu-desktop" "dnsmasq" "iptables-nft" "dmidecode")
flame="grimshot"
eclient="thunderbird"
sext=("autotiling" "workstyle")

sudo pacman -S "${req[@]}"

sudo pacman -S "${x[@]}"

sudo pacman -S "${sway[@]}"

sudo pacman -S "${audio[@]}"

sudo pacman -S "$fonts"

sudo pacman -S "${blue[@]}"

sudo pacman -S "${virt[@]}"

sudo pacman -S "$eclient"


echo $sext


cp /bash/.bashrc $HOME
cp /bash/.bash_profile $HOME
cp -r .config $HOME 


read -rp "Do you want to install the following features y/n: " choice

if [ "$choice" = y ]; then
       if ! which yay >> /dev/null; then
	       git clone https://aur.archlinux.org/yay.git
	       cd yay && makepkg -si
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
