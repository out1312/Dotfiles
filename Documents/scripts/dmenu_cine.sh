#!/usr/bin/bash

cores="-nb #150f0f -nf #ffffff -sb #db7218 -sf #000000"

comando=$(printf "Descargar películas\nExecutar Ferris\nExecutar todo" | dmenu $cores -c -l 3 -i -p "Elixe opción: ")
cd ~/Documents/cine_bueller/
case $comando in
  Descargar\ películas) ./cine;;
  Executar\ Ferris) ./executarFerrisBin.sh;;
  Executar\ todo) ./cine && ./executarFerrisBin.sh;;
esac
