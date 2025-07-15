#!/bin/bash

TMP_DIR="/tmp/rmpc"
ALBUM_ART_PATH="$TMP_DIR/notification_cover.jpg"
DEFAULT_ALBUM_ART_PATH="$HOME/Pictures/dog.png"

mkdir -p "$TMP_DIR"
if ! rmpc albumart --output "$ALBUM_ART_PATH"; then
  ALBUM_ART_PATH="$DEFAULT_ALBUM_ART_PATH"
fi

dunstify -i "$ALBUM_ART_PATH" "Now Playing" "$ARTIST - $TITLE"
