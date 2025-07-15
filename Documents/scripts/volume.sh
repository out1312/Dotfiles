#!/bin/bash

export $(dbus-launch)

get_volume() {
  wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf("%d", $2 * 100)}'
}

case $1 in
  up)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    #volume=$(get_volume)
    #dunstify -h int:value:"$volume" "Volume: $volume%"
    ;;
  down)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    #volume=$(get_volume)
    #dunstify -h int:value:"$volume" "Volume: $volume%"
    ;;
esac

kill -44 $(cat /tmp/dwmblocks.pid)
volume=$(get_volume)
dunstify -h int:value:"$volume" "Volume: $volume%"
