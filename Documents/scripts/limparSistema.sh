#!/bin/bash

comprobarResiduos.sh
echo ""

rm -rf /home/out1312/.local/share/Trash/files/*
rm -rf /home/out1312/Pictures/Screenshots/*
rm -rf /home/out1312/Videos/Screencasts/*

if [[ $(ls /home/out1312/Downloads/ | wc -l) -gt 0 ]]; then
	rm -ri /home/out1312/Downloads/*
fi

[ -n "$(pacman -Qqtd)" ] && pacman -Qqtd | sudo pacman -Rns -

read -p "Eliminar cache de pacman + yay? " cache

case $cache in
	[yYsS] ) echo "Eliminando cache:";
		sudo pacman -Sc
		yay -Sc;;
	* ) echo "Non se eliminou o cache.";;
esac
