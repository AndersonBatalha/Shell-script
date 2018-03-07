#!/bin/bash
dialog --inputbox "Digite o caminho de onde você deseja criar o diretório: " 10 60 2>/tmp/caminho.tmp
caminho="cat /tmp/caminho.tmp"
dialog --inputbox "Digite o nome do diretório: " 10 60 2>/tmp/diretorio.tmp
caminho="cat /tmp/diretorio.tmp"
if [ -e $caminho ]; then
	mkdir -p "$caminho/$diretorio"
	dialog --msgbox "O diretorio $diretorio foi criado" 5 60
else
	dialog --msgbox "Entre com um diretório válido" 5 60
fi
