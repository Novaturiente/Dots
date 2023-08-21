#!/bin/bash

#Installing Packages
yes | sudo pacman -S --needed base-devel git
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R nova:nova ./yay
cd yay
yes | makepkg -si

yes | sudo pacman -S neovim -y
yes | sudo pacman -S hyprland waybar rofi alacritty hyprpaper brightnessctl swaylock
yes | sudo pacman -S zsh starship
yes | sudo pacman S ttf-space-mono-nerd
yes | sudo pacman -S ranger
yes | sudo pacman -S flatpak

yay -S mullvad-browser -y
#Copying configuration
#cd ~/.config

#ln -s ~/Configs/waybar
#ln -s ~/Configs/lvim
#ln -s ~/Configs/swaylock
#ln -s ~/Configs/rofi
#ln -s ~/Configs/alacritty
#ln -s ~/Configs/hypr


####EXTRAS
#wf-config, wlroots uninstalled during wayfire install
