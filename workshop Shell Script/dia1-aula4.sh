# Conectores lógicos
"""
	 			E (&&) 		OU (||)
	V	V		  V			   V
	V	F		  F			   V
	F	V		  F			   V
	F	F		  F			   F
"""

"""$ ls d*
dirlist-bin.txt  dirlist-sbin.txt  dirlist-usr-bin.txt  dirlist-usr-sbin.txt
"""

# Exemplos:

ls d* && echo cmd bem executado # a condição é verdadeira
ls d* > /dev/null && echo cmd bem executado
ls xxx > /dev/null && echo cmd bem executado # erro
ls d* 1> /dev/null 2> /dev/null && echo cmd bem executado # desvia a saída de erro para /dev/null
ls d* 1> /dev/null 2>&1 && echo cmd bem executado # desvia a saída de 2 para a mesma saída de 1
ls xxx 1> /dev/null 2>&1 && echo cmd bem executado # não exibe msg de erro
ls xxx 1> /dev/null 2>&- && echo cmd bem executado # tranca a saída de erro (operação de I/O)

# && equivale ao "then"
# || equivale a "senão"