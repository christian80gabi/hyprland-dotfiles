!/usr/bin/env bash

echo "== Updating System packages to the latest =="
sudo pacman -Syu


echo "== Installing Hyprland ecosystem =="
sudo pacman -Sy hyprland hyprpolkitagent hyprpaper hyprcursor hypridle hyprlock hyprshot hyprsunset


echo "== Installing dependencies =="

echo "1. Systemd startup"
sudo pacman -Sy uwsm

echo "2. Status bar"
sudo pacman -Sy waybar

echo "3. Notification"
sudo pacman -Sy dunst

echo "4. Screen sharing"
sudo pacman -Sy pipewire wireplumber xdg-desktop-portal-hyprland

echo "5. App launcher"
sudo pacman -Sy wofi

echo "6. Color picker"
sudo pacman -Sy hyprpicker

echo "7. Clipboard manager"
sudo pacman -Sy cliphist wl-clipboard wl-clip-persist

echo "8. QT and GTK Support"
sudo pacman -Sy hyprland-qt-support kvantum qt6ct qt5ct nwg-look qt5-wayland qt6-wayland

echo "9. Useful tools"
sudo pacman -Sy bluetui kitty archlinux-xdg-menu brightnessctl playerctl grim slurp qt5-wayland qt6-wayland

echo "10. Fonts"
sudo pacman -Sy noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-fantasque-sans-mono ttf-cascadia-code ttf-cascadia-code-nerd ttf-caladea ttf-carlito ttf-inconsolata

echo "11. Icons"
sudo pacman -Sy papirus-icon-theme tela-circle-icon-theme-all
