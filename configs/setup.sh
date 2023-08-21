#!/bin/bash
#Installing Packages
yes | sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg -si

#Copying configuration
CUR= pwd

cd ~/.config

rm -rf ~/.config/waybar
rm -rf ~/.config/swaylock
rm -rf ~/.config/rofi
rm -rf ~/.config/alacritty
rm -rf ~/.config/hypr

ln -s $CUR/waybar
ln -s $CUR/swaylock
ln -s $CUR/rofi
ln -s $CUR/alacritty
ln -s $CUR/hypr

cp $CUR/zsh/zshrc ~/.zshrc

####EXTRAS
yay -S neovim -y
yay -S hyprland-nvidia waybar rofi alacritty hyprpaper brightnessctl ly -y
yay -S zsh -y
yay -S flatpak -y
yay -S ttf-space-mono-nerd ttf-nerd-fonts-symbols-common otf-sora otf-firamono-nerd ttf-nerd-fonts-symbols-common ttf-iosevka-nerd -y
yay -S mullvad-browser-bin -y

sudo systemctl enable ly

chsh
