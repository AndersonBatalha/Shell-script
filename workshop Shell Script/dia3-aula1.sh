# Dia 3 - O comando paste
# cut / paste
# delimitador padrão é o TAB

echo -e "Impar\tPar" | cat - <(paste <(seq 1 2 9) <(seq 2 2 10))

"""
Saída:
Impar	Par
1		2
3		4
5		6
7		8
9		10
"""

seq 1 2 9 > impares
seq 2 2 10 > pares

paste impares pares # Paste une o conteúdo de dois ou mais arquivos

# opção -d permite alterar o delimitador

paste -d+ impares pares
"""
Saída:
1+2
3+4
5+6
7+8
9+10
"""

# bc - binary calculator
paste -d+ impares pares | bc

# Adicionando um cabeçalho
echo -e "Impar\tPar" | cat - <(paste <(seq 1 2 9) <(seq 2 2 10))

# echo -e : exibir a tabulação (\t)
# O traço (-) recebe os dados da entrada primária

# paste -s
paste -s impares # 1	3	5	7	9

# Opção -d permite alterar o delimitador (por padrão é o TAB)
paste -sd+ impares #1+3+5+7+9

# redireciona a saída para o bc (binary calculator)
paste -sd+ impares | bc # 25

seq 4 | paste -sd+ # 1+2+3+4

# Fatorial
seq 4 | paste -sd\* # 1*2*3*4
seq 4 | paste -sd\* | bc # 24

# seq possui o parâmetro -s, que permite alterar o delimitador (por padrão é o fim de linha - ENTER)
seq -s\* 5 # 1*2*3*4*5
seq -s\* 5 | bc # 120

# Outra forma de calular o fatorial
echo {1..6} # 1 2 3 4 5 6
echo {1..6} | tr ' ' \* # 1*2*3*4*5*6
echo {1..6} | tr ' ' \* | bc # 720

echo $(($(echo {1..6} | tr ' ' \* | bc)))
# $(( $ {{ : interpretador aritmético do shell
# $( : prioridade de execução

touch arq{1..8}
ls arq[1-8] | paste -s -d'\t\t\n'
ls arq[1-8] | paste - - -

"""
Saída: 
arq1	arq2	arq3
arq4	arq5	arq6
arq7	arq8
"""



