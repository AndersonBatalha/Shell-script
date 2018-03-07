 #Aula 1
 #Como usar o comando if
"""
 Expressões regulares: são usadas para identificar padrões em textos
	 grep --> Sintaxe: grep [options] regex [file...]
		 Opções
			 -i Não distingue maiúsculas e minúsculas
			 -v Mostra as linhas que não contém o casamento
			 -c Mostra o número de casamentos
			 -n Prefixa cada linha com o número da linha
			 -h Múltiplos arquivos
		 Caracteres
			 literais: representam eles próprios
			 especiais: representam casamentos mais complexos
				 Expressão regular básica ^ $ . [ ] * \
				 Expressão regular estendida ? + ( ) { } |
		 Delimitador: marca início e fim de uma expressão regular
			 não representa a si próprio
			 Sinal de barra /
		 String simples: não contém nenhum caractere especial
			 Exemplo: /ring/, /or not/
		 Caracteres especiais
			 Ponto (.): casa qualquer caractere
				 /.alk/, /.ing/
				 grep -h ".zip" arquivo.txt
			 Colchetes []: define uma classe de caractere		
				 Acento ^: casa qualquer caractere não especificado
				 Traço - define uma faixa de caracteres
				 /[bB]ill/ : b ou B + ill
				 /t[aeiou].k/ : t + qualquer vogal + qualquer caractere + k
				 grep -h "[bg]zip" arquivo.txt
				 Classes pré definidas:
				 	[:alnum:] -> alfanuméricos
				 	[:alpha:] -> letras
				 	[:blank:] -> espaço em branco
				 	[:cntrl:] -> caracteres de controle (CONTROL)
				 	[:digit:] -> dígitos
				 	[:lower:] -> letras minúsculas [a-z]
				 	[:space:] -> espaçamento
				 	[:upper:] -> letras maiúsculas [A-Z]
				 	[:xdigit:] -> hexadecimal [0-9], [a-f] e [A-F]

			 Asterisco * : representa zero ou mais ocorrências de um casamento de expressão regular
			 	- Depois do caractere literal: indica zero ou mais sequências
			 		Ex: /ab*c/
			 	- Depois de ponto (.): qualquer sequência de caracteres
			 		Ex: /ab.*c/
			 			/t.*ing/
			 	- Depois de uma classe de caracteres: casa qualquer string cujos caracteres são membros da classe
			 		Ex: /[a-zA-Z ]*/ - string com letras (maiúsculas e minúsculas) e espaço

			 Âncoras : 
			 	^ no começo da linha 
			 		Ex: /^T/ (T no começo da linha)
			 			/^+[0-9]/ (sinal de + seguido de um dígito)
			 	$ no final da linha 
			 		Ex: /:$/ (dois pontos no fim da linha)

			 Escape: escapar caracteres especiais com uma barra invertida antes do caractere (\)
			 	Ex: /end\./ (end + .)
			 		/\\/ (uma única barra invertida)
			 		/\*/ (um asterisco)
			 		/\[5\]/ ([5])

 		Agrupamento de expressões regulares
 			Pode se usar \( e \) para agrupar uma expressão regular

 		Substituição de texto
	 		E Comercial (&): recebe o valor da string que a expressão regular casou

"""

ifconfig | grep -E "([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}"
# grep -E : expressão regular estendida

# $? : código de retorno da última instrução. Retorna 0 se a instrução for bem sucedida

# errado !
if [ $? = 0 ]; then echo OK; else echo NOK; fi


# if é utilizado para testar comandos, não para fazer comparações
if test $? = 0; then echo OK; else echo NOK; fi

# A = B - no shell script compara strings

""" 
man test

(EXPRESSÃO) - verifica se é verdadeiro
! EXPRESSÃO - verifica se é falso
EXPRESSÃO1 -a EXPRESSÃO2 - AND
EXPRESSÃO1 -o EXPRESSÃO2 - OR

-n STRING : verifica se o tamanho da string é diferente de 0
-z STRING : verifica se o tamanho da string é 0
STRING1 = STRING2 : verifica se as strings são iguais
STRING1 != STRING2 : verifica se as strings são diferentes

INTEIRO1 -eq INTEIRO2 : iguais
INTEIRO1 -ge INTEIRO2 : maior ou igual
INTEIRO1 -gt INTEIRO2 : maior
INTEIRO1 -le INTEIRO2 : menor ou igual
INTEIRO1 -lt INTEIRO2 : menor
INTEIRO1 -ne INTEIRO2 : diferente

ARQUIVO1 -nt ARQUIVO2 : newer than (mais novo)
ARQUIVO1 -ot ARQUIVO2 : older than (mais antigo)
-d ARQUIVO : se o arquivo existe e é um diretório
-e ARQUIVO : se o arquivo existe
-h ARQUIVO : se o arquivo existe e é um link simbólico
-r ARQUIVO : se o arquivo existe e possui permissão de leitura
-w ARQUIVO : se o arquivo existe e possui permissão de escrita
-x ARQUIVO : se o arquivo existe e possui permissão de execução
"""

# ERRADO! Está comparando cadeias de caracteres
if [ 01 = 1 ]; then echo iguais; else echo diferentes ; fi

# CORRETO
if [ 01 -eq 1 ]; then echo iguais; else echo diferentes ; fi

if ifconfig | grep -E "([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}"; then echo OK; else echo NOK; fi
if ifconfig | grep -Eo "([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}"; then echo OK; else echo NOK; fi

# grep -q : oculta a saída do comando, processa a variável $?
if ifconfig | grep -q "([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}"; then echo OK; else echo NOK; fi

# IF : testa comandos
if grep -q ^root: /etc/passwd; then echo tá lá; else echo num tá; fi
