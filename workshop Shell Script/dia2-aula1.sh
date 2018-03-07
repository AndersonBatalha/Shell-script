# Comando xargs
# Sintaxe: comando1 | xargs comando2
# A saída do comando1 é redirecionada via pipe ao xargs
# O comando2 é um parâmetro de xargs
# comando1 é um parâmetro do comando2
# Tenta executar o maior número de comandos possíveis
# xargs possui um shell próprio

"""
Exemplo 1:
$ seq 10 | xargs echo linha

Saída:
linha 1
linha 2
linha 3
linha 4
linha 5
linha 6
linha 7
linha 8
linha 9
linha 10

"""

"""
Exemplo 2: 
$ seq 10 | xargs -L2

Saída:
1 2
3 4
5 6
7 8
9 10
"""

touch b
echo b | xargs rm # redireciona a saída do primeiro comando (echo b) para o comando rm

seq 10 # exibe números de 1 até 10

seq 10 | xargs  "Saída : 1 2 3 4 5 6 7 8 9 10"

time find .. -type f | wc -l # Exibe o número de arquivos existentes no diretório acima do diretório atual

time find .. -type f -exec grep -l date {} \; | wc -l
time find .. -type f -exec grep -l date {} \+ | wc -l
# \; pula uma linha
# grep -l exibe apenas o nome do arquivo

time find .. -type f | xargs grep -l date | wc -l

# xargs: o argumento default é echo
seq 10 | xargs "Saída : 1 2 3 4 5 6 7 8 9 10"
seq 10 | xargs echo "Saída : 1 2 3 4 5 6 7 8 9 10"

# ls arq*.ok - lista todos os arquivos iniciados com arq e terminados com .ok. Redirecionado para xargs
# bash -c : executa dois comandos em sequência (mv e echo)

# {} : recebe a saída do comando ls
ls arq*.ok | xargs -i bash -c "mv {} dir; echo movi {}" 

# exibe os comandos executados
ls arq*.ok | xargs -tI{} bash -c "mv {} dir; echo movi {}"

# exibe um prompt de confirmação
ls arq*.ok | xargs -pI{} bash -c "mv {} dir; echo movi {}"
