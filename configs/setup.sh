#!/bin/bash

#Installing Packages
yes | sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg -si

yay -S neovim -y
yay -S hyprland-nvidia waybar rofi alacritty hyprpaper brightnessctl -y
yay -S zsh -y
yay -S flatpak -y
yay -S ttf-space-mono-nerd ttf-nerd-fonts-symbols-common otf-sora otf-firamono-nerd ttf-nerd-fonts-symbols-common ttf-iosevka-nerd -y

yay -S mullvad-browser-bin -y
#Copying configuration
cd ~/.config

rm -rf ~/.config/waybar
rm -rf ~/.config/swaylock
rm -rf ~/.config/rofi
rm -rf ~/.config/alacritty
rm -rf ~/.config/hypr

ln -s ~/Configs/waybar
ln -s ~/Configs/swaylock
ln -s ~/Configs/rofi
ln -s ~/Configs/alacritty
ln -s ~/Configs/hypr

####EXTRAS
