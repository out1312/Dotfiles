#
# ~/.bash_profile
#

export PATH="$PATH:/home/out1312/.cargo/bin"

start_menu() {

  hyfetch # Engadido aquí ó quitalo de .bashrc

  while true; do
    echo "Elixe unha opción:"
    echo "  (1) Iniciar KDE Plasma (Wayland)"
    echo "  (2) Iniciar dwm (Xorg)"
    echo "  (3) Quedarse en tty"
    echo ""
    read opcion

    case $opcion in
      1) exec startplasma-wayland;;
      2) startx;;
      3) echo ""; echo "Saíndo do menú..."; echo ""; return;;
      *) echo ""; echo "Opción inválida. Volve intentalo."; echo "";;
    esac
  done

}

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  #start_menu
  # Quitada opción de start_menu, inicio de dwm directo
  startx
fi


