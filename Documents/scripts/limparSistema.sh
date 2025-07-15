#!/bin/bash

comprobarResiduos.sh
echo ""

rm -rf /home/out1312/.local/share/Trash/files/*
rm -ri /home/out1312/Downloads/*
rm -rf /home/out1312/Pictures/Screenshots/*
rm -rf /home/out1312/Videos/Screencasts/*

[ -n "$(pacman -Qqtd)" ] && pacman -Qqtd | sudo pacman -Rns -

read -p "Eliminar cache de pacman sen usar? " cache

case $cache in
	[yYsS] ) echo "Eliminando cache:";
		sudo pacman -Sc;;
	* ) echo "Non se eliminou o cache.";;
esac
