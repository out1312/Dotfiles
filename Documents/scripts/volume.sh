#!/bin/bash

#export $(dbus-launch)

id_notificacion="13121"

get_volume() {
  wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf("%d", $2 * 100)}'
}

case $1 in
  up)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    ;;
  down)
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    ;;
esac

kill -44 $(cat /tmp/dwmblocks.pid)
volume=$(get_volume)

dunstify -r $id_notificacion -u low -t 2000 -h int:value:"$volume" "Volume: $volume%"
