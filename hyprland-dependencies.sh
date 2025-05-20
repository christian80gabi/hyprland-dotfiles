!/usr/bin/env bash

printf "\n\n == Updating System packages to the latest == \n"
sudo pacman -Syu


printf "\n\n == Installing Hyprland ecosystem =="
sudo pacman -Sy --noconfirm hyprland hyprpolkitagent hyprpaper hyprcursor hypridle hyprlock hyprsunset


printf "\n\n == Installing dependencies =="

printf "\n\n 1. Systemd startup"
sudo pacman -Sy --noconfirm uwsm

printf "\n\n 2. Status bar"
sudo pacman -Sy --noconfirm waybar

printf "\n\n 3. Notification"
sudo pacman -Sy --noconfirm dunst

printf "\n\n 4. Screen sharing"
sudo pacman -Sy --noconfirm pipewire wireplumber xdg-desktop-portal-hyprland

printf "\n\n 5. App launcher"
sudo pacman -Sy --noconfirm wofi

printf "\n\n 6. Color picker"
sudo pacman -Sy --noconfirm hyprpicker

printf "\n\n 7. Clipboard manager"
sudo pacman -Sy --noconfirm cliphist wl-clipboard wl-clip-persist

printf "\n\n 8. QT and GTK Support"
sudo pacman -Sy --noconfirm hyprland-qt-support kvantum qt6ct qt5ct nwg-look qt5-wayland qt6-wayland

printf "\n\n 9. Useful tools"
sudo pacman -Sy --noconfirm bluetui kitty archlinux-xdg-menu xdg-desktop-portal xdg-desktop-portal-gtk brightnessctl playerctl grim slurp qt5-wayland qt6-wayland pavucontrol-qt

printf "\n\n 10. Fonts"
sudo pacman -Sy --noconfirm noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-fantasque-sans-mono ttf-cascadia-code ttf-cascadia-code-nerd ttf-caladea ttf-carlito ttf-inconsolata

printf "\n\n 11. Icons"
sudo pacman -Sy --noconfirm papirus-icon-theme tela-circle-icon-theme-all
