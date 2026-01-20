#
# ~/.bash_profile
#

export PATH="$PATH:/home/out1312/.cargo/bin"
export PYTHONPATH=$PYTHONPATH:/usr/bin
export QT_QPA_PLATFORMTHEME=qt6ct

#start_menu() {
#
#  hyfetch # Engadido aquí ó quitalo de .bashrc
#
#  while true; do
#    echo "Elixe unha opción:"
#    echo "  (1) Iniciar KDE Plasma (Wayland)"
#    echo "  (2) Iniciar dwm (Xorg)"
#    echo "  (3) Quedarse en tty"
#    echo ""
#    read opcion
#
#    case $opcion in
#      1) exec startplasma-wayland;;
#      2) startx;;
#      3) echo ""; echo "Saíndo do menú..."; echo ""; return;;
#      *) echo ""; echo "Opción inválida. Volve intentalo."; echo "";;
#    esac
#  done
#
#}

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  #start_menu
  # Quitada opción de start_menu, inicio de dwm directo
  export XDG_CURRENT_DESKTOP=sway
  export XDG_SESSION_DESKTOP=sway
  #exec dbus-run-session niri
  #exec niri
  #exec niri-session
  dbus-run-session niri --session
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
  XDG_MENU_PREFIX=arch- kbuildsycoca6 
  startx
fi
