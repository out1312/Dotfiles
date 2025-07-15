#!/bin/bash

contarArquivos(){
	ls -1q $1 | wc -l
}

echo -n "Arquivos no Lixo: "; contarArquivos ~/.local/share/Trash/files
echo -n "Arquivos en Descargas: "; contarArquivos ~/Downloads
echo -n "Arquivos en Capturas: "; contarArquivos ~/Pictures/Screenshots
echo -n "Arquivos en Grabacións: "; contarArquivos ~/Videos/Screencasts
echo -n "Paquetes orfos: "; pacman -Qqtd | wc -l
