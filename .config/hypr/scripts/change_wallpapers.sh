#!/usr/bin/env bash

WALLPAPER_DIRECTORY=$HOME/.local/share/wallpapers/

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

echo "Setting wallpaper to: $WALLPAPER"

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused
