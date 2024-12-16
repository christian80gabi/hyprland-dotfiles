#!/usr/bin/env bash

ENV_PATH="${HOME}/.config/hypr/scripts/env.sh"
. $ENV_PATH

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

