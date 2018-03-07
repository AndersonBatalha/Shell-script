#!/bin/bash
echo "Digite o caminho onde vai ser criado o diretório"
read caminho
echo "Digite o nome do diretório"
read diretorio

if [ $caminho = $caminho ]; then
	mkdir -p "$caminho/diretorio"
	echo "O diretório $diretorio foi criado"
else 
	echo "Entre com um diretório válido"
fi
