# One liners: quanto menor, melhor
# named pipes e substituição de processos
# comando comm, uniq e o interpretador aritmético let do Shell

# Desafio: contar quantos arquivos têm uma determinada extensão
ls | cut -sf2 -d. | sort | uniq -c

# cut
	# -d. : altera o delimitador para o sinal de ponto
	# -f2 : pega o segundo campo do arquivo (extensão)
		# arq.txt --> pega o txt
	# -s : suprime os arquivos sem extensão

# uniq: pega uma pilha de dados ordenados e coloca apenas um registro de cada tipo
	# -c : conta quantas vezes aparece um registro
	# -d : Lista apenas os duplicados

# Desafio: contar quantas vogais existem em uma frase
tr '[:upper:]' '[:lower:]' <<< \ "uma FrasE muitissimo legAL" | grep -o '[aeiou]' | sort | uniq -c

"""
upper e lower são classes POSIX
tr troca maiúsculas por minúsculas
<<< : substitui o pipe | , equivale a echo
tr '[:upper:]' '[:lower:]' troca letras maiúsculas por minúsculas
grep -o '[aeiou]' : retorna as ocorrências encontradas em comparação com a lista
sort : ordena
uniq -c : não coloca registros repetidos
"""

# Substituição de processos

"""Só se pode passar a saída de um comando para entrada de outrocom um pipe (errado)"""
cat <(ls)
# <(comando) entrada
# >(comando) saída

ls -l >(cat)
"""Saída : l-wx------ 1 anderson anderson 64 Mar  4 20:24 /dev/fd/63 -> pipe:[142183]
Aponta para um pipe temporário
"""

# sinal de maior > : envia a saída para o outro comando
# fd 0: entrada padrão
# fd 1: saída padrão
# fd 2: saída de erro padrão 
# fd 63 (/dev/fd/63) : arquivo temporário de named pipe
# < e 0<q saída de erro padrão
# > e 1>q stdout


ls | while read arq; do echo $((++i)) $arq; done

"""
Saída: 
1 arq1
2 arq1.err
3 arq2
4 arq2.err
(...)
"""

# Operações matemáticas $(()) ou ${{}}
# ++i : pré incremento
# O pipe | cria um subshell e cria as variáveis dentro dele

echo $i # não retorna nada, pois a variável i foi criada no subshell

i=50 # cria uma cópia da pilha de dados no subshell
ls | while read arq; do echo $((++i)) $arq; done

"""
Saída:
51 arq1
52 arq1.err
53 arq2
(...)
"""

# com substituição de processos
while read arq; do echo $((++i)) $arq; done < <(ls)
# < redireciona a entrada do loop 
# o ls é executado em um arquivo de named pipe
# <(ls) redireciona a saída de ls para um named pipe temporário

diff <(ls -l dir) <(ls -l dir.bkp)
# diff : verifica diferenças entre dois arquivos, recebe como entrada dois arquivos
# ls -la dir e ls -la dir.bkp são a listagem dos dois diretórios (arquivos de named pipes temporários)

cmp <(cat dir/*) <(cat dir.bkp/*)
# cmp: na primeira diferença encontrada, aborta

# Remover arquivos que contém uma palavra chave
rm -i $(comm -13 <(grep -li 'palavra chave' *) <(ls))

"""
comm: também compara arquivos
grep -l : lista o nome do arquivo
grep -i : ignora maiúsculas e minúsculas


"""


