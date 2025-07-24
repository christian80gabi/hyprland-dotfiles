#!/bin/bash

WALLPAPER_DIRECTORY=~/.local/share/wallpapers/anime

WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)

echo "Setting wallpaper to: $WALLPAPER"

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused
