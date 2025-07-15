#!/bin/bash

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

ESTADO_DESCARGANDO=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "state" | grep -c "discharging")

# Se a batería non se está descargando, exit
if [[ $ESTADO_DESCARGANDO -ne 1 ]]; then exit
fi

NOTIFICACION_ENVIADA=/tmp/notificacion_enviada
LIMITE_BATERIA=20

BATERIA=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "percentage" | awk '{printf "%d", $2}')

# Se a batería é menor de 20 e non se enviou a notificación, envíase
if [[ $BATERIA -le $LIMITE_BATERIA ]] && [[ ! -f $NOTIFICACION_ENVIADA ]]; then
  dunstify -I ~/Pictures/Icons/Portrait_kitsuragi2.png -u critical "Batería Baixa!"
  touch $NOTIFICACION_ENVIADA
elif [[ $BATERIA -gt $LIMITE_BATERIA ]] && [[ -f $NOTIFICACION_ENVIADA ]]; then
  rm $NOTIFICACION_ENVIADA
fi
