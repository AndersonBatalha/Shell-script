#!/bin/bash

#5. Estruturas de decisão if/then/else
# if [CONDICAO]; 
# then [AÇÕES] 
# else [OUTRA ACAO]
# fi
# Parâmetros
#n string1: o comprimento de string1 é diferente de 0;
#z string1: o comprimento de string1 é zero;
#string1 = string2: string1 e string2 são idênticas;
#string1 != string2: string1 e string2 são diferentes;
#inteiro1 -eq inteiro2: inteiro1 possui o mesmo valor que inteiro2;
#inteiro1 -ne inteiro2: inteiro1 não possui o mesmo valor que inteiro2;
#inteiro1 -gt inteiro2: inteiro1 é maior que inteiro2;
#inteiro1 -ge inteiro2: inteiro1 é maior ou igual a inteiro2;
#inteiro1 -lt inteiro2: inteiro1 é menor que inteiro2;
#inteiro1 -le inteiro2: inteiro1 é menor ou igual a inteiro2;
#e nome_do_arquivo: verifica se nome_do_arquivo existe;
#d nome_do_arquivo: verifica se nome_do_arquivo é um diretório;
#f nome_do_arquivo: verifica se nome_do_arquivo é um arquivo regular (texto, imagem, programa, docs, planilhas).

#if
echo "Informe sua nacionalidade: "
read pais
if [ pais = "Brasil" ]
   then
	echo "Somos do mesmo país!!!"
fi

#if-else
echo "Digite sua idade: "
read idade;
if [ "$idade" -gt 17 ];
   then
	echo "Você já é maior de idade"
   else
	echo "Você não completou 18 anos ainda"
fi

#if-elif-else
echo "Digite um número: "
read num
if [ $num -lt 0 ]
   then
	echo "$num é negativo"
elif [ $num -eq 0 ]
   then
	echo "Número é igual a 0"
else
	echo "$num é positivo"
fi

#case
# case $variavel in
#     "valor1")
	#ACAO_1
	#;;
#     "valor2")
	#ACAO_2
	#;;
#esac
#Exemplo
echo "Digite uma #!/bin/bash
opcao: "
echo "1 - Exibir uma mensagem"#case
# case $variavel in
#     "valor1")
	#ACAO_1
	#;;
#     "valor2")
	#ACAO_2
	#;;
#esac
#Exemplo
echo "Digite uma opcao: "
echo "1 - Exibir uma mensagem"
echo "2 - Data e hora do sistema"
read opcao
case $opcao in
	"1")
		echo "Os canhotos também tem seus direitos"
		;;
	"2")
		echo "08/09/2017 13:09"
		;;
esac 

