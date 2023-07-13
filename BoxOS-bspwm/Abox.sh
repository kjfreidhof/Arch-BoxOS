#!/usr/bin/env bash

set -e

req="git" "vim"
x="xorg-server" "xorg-apps" "xorg-xinit"
bsp="bspwm" "polybar" "sxhkd" "rofi" "kitty" "firefox"
audio="pipewire" "pipewire-audio" "pipewire-alsa" "pipewire-pulse" "sof-firmware" "pavucontrol"



xwm="chmod +x .config/bspwm/bspwmrc"
xpol="chmod +x .config/polybar/launch.sh"
xsd="chmod +x .config/sxhkd/sxhkdrc"
conf="cp -r .config ~/"
bash="cp * bash/ ~/"
xin="cp * xinit/.xinitrc ~/"

sudo pacman -S $req[@]

sudo pacman -S $x[@]

sudo pacman -S $bsp[@]

sudo pacman -S $audio[@]


$conf
$bash
$xin 
