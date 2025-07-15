#!/bin/bash

TMP_DIR="/tmp/rmpc"
ALBUM_ART_PATH="TMP_DIR/notification_cover"
DEFAULT_ALBUM_ART_PATH="~/Pictures/dog.png"

mkdir "$TMP_DIR"

if ! rmpc albumart --output "ALBUM_ART_PATH"; then
  ALBUM_ART_PATH="${DEFAULT_ALBUM_ART_PATH}"
fi

notify-send -i "${ALBUM_ART_PATH}" "Now Playing" "$ARTIST - $TITLE"
