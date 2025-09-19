#!/usr/bin/env bash

filtroAzul(){
  temperatura=$(cat ~/.config/blugon/current)
  temperaturaInt="${temperatura:0:4}"
  # Blugon garda as temperaturas como floats

  if [[ $temperaturaInt -eq 6600 ]]; then
    blugon --setcurrent="4000.0" 
  else
    blugon --setcurrent="6600.0" 
  fi
}

cores="-nb #150f0f -nf #ffffff -sb #db7218 -sf #000000 -fn JetBrainsMono-14"

comando=$(printf "Filtro luz azul" | dmenu $cores -c -l 3 -i -p "Elixe opción: ")

case $comando in
  Filtro\ luz\ azul) filtroAzul;;
  #Opt2) echo "Placeholder";;
  #Opt3) echo "Placeholder";;
esac
