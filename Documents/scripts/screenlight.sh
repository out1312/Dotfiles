#!/bin/bash

export $(dbus-launch)

case $1 in
  up)
    brightnessctl set 5%+
    brightness=$(brightnessctl -m | awk -F, '{print $4}')
    dunstify -t 2000 -h int:value:"$brightness" "Brillo: $brightness"
    ;;
  down)
    brightnessctl set 5%-
    brightness=$(brightnessctl -m | awk -F, '{print $4}')
    dunstify -t 2000 -h int:value:"$brightness" "Brillo: $brightness"
    ;;
esac
