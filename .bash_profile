#
# ~/.bash_profile
#

export PATH="$PATH:/home/out1312/.cargo/bin"
export PYTHONPATH=$PYTHONPATH:/usr/bin
export QT_QPA_PLATFORMTHEME=qt6ct
XDG_MENU_PREFIX=arch- kbuildsycoca6 

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
  cat ~/todo-2.txt
  sleep 3
  niri
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
  startx
fi
