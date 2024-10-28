!/usr/bin/env bash

CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/themes/catppuccin/mocha/style.css"

options=" Poweroff\n Reboot\n Suspend\n Lock\n Logout"

selected=$( echo -e $options | wofi --conf "${CONFIG}" --style "${STYLE}" -i --dmenu | awk '{print tolower($2)}' )

case $selected in 
  poweroff)
    exec systemctl $selected -i;;
  reboot)
    exec systemctl $selected;;
  suspend)
    exec systemctl $selected;;
  lock)
    hyprlock;;
  logout)
    hyprctl dispatch exit;;
esac

