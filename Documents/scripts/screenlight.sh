#!/bin/bash

#export $(dbus-launch)

id_notificacion="13122"

case $1 in
  up)
    brightnessctl set 5%+
    ;;
  down)
    brightnessctl set 5%-
    ;;
esac

brightness=$(brightnessctl -m | awk -F, '{print $4}')

dunstify -r $id_notificacion -u low -t 2000 -h int:value:"$brightness" "Brillo: $brightness"
