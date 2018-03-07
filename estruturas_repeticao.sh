#!/bin/bash
# Estruturas de repetição - FOR
# FOR variavel in valor-1, valor-2, ... , valor-n
#	DO
#		ACOES
#	DONE

#OU
# FOR variavel in (valor-1 .. valor-N)
#	DO
#		ACOES
#	DONE
echo "Estruturas de repetição - FOR"
echo "  "
echo "Exemplo de um laço for, exibindo valores de 0 a 10 "
for valor in {0..9}
	do
		echo "$valor"
	done
	
#Comando seq
#for i in $(seq 1-inicio 5-intervalo 100-fim)
	#do
		#echo "$i"
	#done

echo "Testando o comando seq"
for i in $(seq 0 100 1000)
	do
		echo "$i"
	done

#Comando seq sem intervalo
#for i in $(seq 1-inicio 100-fim)
	#do
		#echo "$i"
	#done

echo "Testando o comando seq sem intervalo"
for i in $(seq 1 15)
	do
		echo "$i"
	done

# Estruturas de repetição - WHILE
# while [ condicao ]
	#do
		#Ações
	#done

echo "Estruturas de repetição - WHILE"
echo "Insira qualquer valor, digite -1 para sair"
read valor
while [ "$valor" != -1 ];
	do
		echo "Você digitou $valor"
		read valor
	done
echo "Sair."

echo "Estruturas de repetição - WHILE (com contador)"
num=1
while [ $num -le 20 ]
	do
		echo "$num"
		((num=$num + 1))
	done
