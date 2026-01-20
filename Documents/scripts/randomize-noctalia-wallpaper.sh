#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
STATE_FILE="$HOME/.cache/noctalia-wallpaper-index"
CURRENT_WALLPAPER_FILE="$HOME/.cache/current-wallpaper.png"

mapfile -t WALLPAPERS < <(
  find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | sort
)

if [[ -f "$STATE_FILE" ]]; then
  INDEX=$(<"$STATE_FILE")
else
  INDEX=0
fi

if (( INDEX >= ${#WALLPAPERS[@]} )); then
  INDEX=0
fi

WALLPAPER="${WALLPAPERS[$INDEX]}"

echo $((INDEX + 1)) > "$STATE_FILE"

qs -c noctalia-shell ipc call wallpaper set "$WALLPAPER" eDP-1

cp "$WALLPAPER" "$CURRENT_WALLPAPER_FILE"
