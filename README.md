# HYPRLAND-DOTFILES

    Minimalistic Hyprland configuration files


## Screenshots

![Desktop with Kitty](/screenshots/terminal.png "Desktop with Kitty")

![Desktop with Wofi](/screenshots/wofi.png "Desktop with Wofi")

## Notes

> **First thing, first**, please check the [Hyprland Wiki](https://wiki.hyprland.org)


## Installation

These are used with Hyprland installed with the packages cited below:
- dunst
- kitty
- kvantum
- nwg-look
- qt5ct
- qt6ct
- vkbasalt
- waybar
- wofi
- chromium
- gamemode
- spotify-launcher (Arch Linux)
- mangohud
- vscode

```shell
# Arch Linux
$ sudo pacman -Sy hyprland hyprpaper hyprlock hypridle kvantum dunst kitty mangohud nwg-look qt5ct qt6ct waybar wofi

# OpenSUSE
$ sudo zypper install hyprland hyprpaper hyprlock hypridle kvantum-manager dunst kitty mangohud nwg-look qt5ct qt6ct waybar wofi

```


## Configuration

> Please Backup your config files first or skip this part and copy files from `hyprland-dotfiles/.config` one by one to your `~/.config` folder.

```shell

$ cd ~/Downloads

$ git clone https://github.com/christian80gabi/hyprland-dotfiles.git

$ cd hyprland-dotfiles

$ cp ./.config/* ~/.config/

```

You should end up with something like this:

```shell

$ tree ~/.config/

|____ ...
|____ dunst
|____ hypr
|____ qt5ct
|____ qt6ct
|____ scripts
|____ waybar
|____ wofi
|____ ...

```

## License

This is released under the [MIT License].

[MIT License]: LICENSE