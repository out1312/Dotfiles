#!/bin/bash

trashFolder="$HOME/.local/share/Trash/files"
downloadsFolder="$HOME/Downloads"
screenshotsFolder="$HOME/Pictures/Screenshots"
screencastsFolder="$HOME/Videos/Screencasts"

contarArquivos(){
	ls -1q $1 | wc -l
}

verImaxes(){
  if [[ $(contarArquivos $1) -gt 0 ]] then 
    kitty icat $1/*.png
    kitty icat $1/*.jpg
  fi
}

echo -n "Arquivos no Lixo: "; contarArquivos $trashFolder
echo -n "Arquivos en Descargas: "; contarArquivos $downloadsFolder
echo -n "Arquivos en Capturas: "; contarArquivos $screenshotsFolder
echo -n "Arquivos en Grabacións: "; contarArquivos $screencastsFolder
echo -n "Paquetes orfos: "; pacman -Qqtd | wc -l

verImaxes $screenshotsFolder
verImaxes $downloadsFolder
