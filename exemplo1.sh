#!/bin/bash
echo "Digite o caminho onde vai ser criado o diretório"
read caminho
echo "Digite o nome do diretório"
read diretorio

mkdir -p "$caminho/$diretorio"
