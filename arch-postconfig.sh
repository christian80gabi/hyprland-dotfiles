# Installations

# Add external drive for Steam
# UUID=d8f90352-fc13-43c6-af82-b464af5fd2af   /home/chris/DATA   btrfs   rw,nofail,users,exec,auto                                                                               0 0

# Tools
sudo pacman -Sy bash-completion mangohud goverlay fcitx5-im fuse2 fastfetch ntfs-3g exfat-utils xfsprogs dosfstools qt5-wayland qt6-wayland

sudo pacman -Sy partitionmanager isoimagewriter udo pacman -Sy gwenview okular qt6-imageformats kimageformats libavif libheif

# Flatpak
sudo pacman -Sy flatpak flatpak-kcm

# Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Keyd
sudo pacman -Sy keyd
sudo systemctl enable keyd
sudo systemctl start keyd
sudo vim /etc/keyd/default.conf
sudo keyd reload

# Firewall
sudo pacman -Sy firewalld
sudo systemctl enable firewalld.service
sudo systemctl start firewalld.service


# Firefox
sudo pacman -Sy firefox thunderbird


# Spotify
sudo pacman -Sy spotify-launcher


# Paru
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


# Bluetooth
sudo pacman -Sy  bluez bluez-utils
sudo usermod -a -G lp chris
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service


# Kvantum
sudo pacman -Sy kvantum kvantum-qt5


# Icons
sudo pacman -Sy papirus-icon-theme tela-circle-icon-theme-all


# Steam
sudo pacman -Sy steam lib32-systemd lib32-opencl-nvidia


# AUR
paru -Sy visual-studio-code-bin heroic-games-launcher-bin onlyoffice-bin microsoft-edge-stable-bin


# Oh-my-bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"


# Wine
sudo pacman -Sy wine wine-mono winetricks wine-gecko lib32-sdl2
sudo pacman -Sy lib32-sdl2 gst-plugins-bad gst-plugins-base gst-plugins-good

sudo pacman -Sy gamescope gamemode
sudo usermod -a -G gamemode chris


# Printers
sudo pacman -Sy system-config-printer cups-pdf
sudo pacman -Sy cups cups-pk-helper lib32-libcups

sudo systemctl enable cups.socket
sudo systemctl start cups.socket


# Discord
sudo pacman -Sy discord

# Blanket
sudo pacman -Sy blanket


# MegaSync

> pacman
[DEB_Arch_Extra]
SigLevel = Required TrustedOnly
Server = https://mega.nz/linux/repo/Arch_Extra/$arch/

> terminal
sudo pacman -Syy
sudo pacman-key --list-keys
sudo pacman-key --finger B01C811880480C854C73EC7E1A664B787094A482
sudo pacman-key --list-sigs B01C811880480C854C73EC7E1A664B787094A482
sudo pacman-key --lsign-key B01C811880480C854C73EC7E1A664B787094A482
sudo pacman -Syy

sudo pacman -Sy megasync dolphin-megasync
paru sni-qt


sudo pacman -Sy jdk-openjdk


# Fonts
sudo pacman -Sy noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-fantasque-sans-mono ttf-cascadia-code ttf-cascadia-code-nerd ttf-caladea ttf-carlito ttf-inconsolata


# OpenVPN
sudo pacman -Sy openvpn networkmanager-openvpn libnma-gtk4


# Samba

sudo pacman -Sy samba

sudo systemctl enable samba
sudo systemctl start samba

sudo systemctl enable nmb
sudo systemctl start nmb

sudo pacman -Sy wsdd
sudo systemctl enable wsdd
sudo systemctl start wsdd

sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service


sudo pacman -Sy kwalletmanager


# Virtualization
sudo pacman -Sy qemu-full

sudo pacman -Sy libvirt
sudo pacman -Sy libvirt dnsmasq iptables-nft libvirt-storage-iscsi-direct lvm2 openbsd-netcat radvd swtpm python-cryptography libvirt-python python-lxml
sudo usermod -a -G libvirt chris

sudo pacman -Sy virt-manager

sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

sudo systemctl enable virtlogd.service
sudo systemctl start virtlogd.service

sudo systemctl enable iptables.service
sudo systemctl start iptables.service
