#!/bin/bash
#Funções - Sintaxe 
#nome_funcao() {
	#ACOES
#}

calculo_fatorial() {
	echo "Informe um número: "
	read numero
	i=1
	fat=1
	while [ $i -le $numero ]
		do
			fat=$(($fat * $i))
			i=$(($i + 1))
		done
	echo "O fatorial de $numero é $fat"
}

calculo_fatorial
