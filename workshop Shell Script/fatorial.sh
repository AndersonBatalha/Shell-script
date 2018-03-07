#!/bin/bash
# Programa para calculo de fatorial
# http://www.dicas-l.com.br/arquivo/script_para_calculo_de_fatorial.php#.WpyLJHXwY8o

[ $# -ne 1 ] && exit 1 # encerra o programa caso não seja passado um parâmetro
echo $(($(seq -s \* $1)))

# seq -s \* $1 : produz uma sequência numérica de 1 até $1, separado por asterisco (*)
# parâmetro 5 : 1*2*3*4*5

# $() : tem prioridade de execução
# $(()) : invoca o interpretador aritmético do shell, o que está dentro de $(()) é executado como uma operação aritmética

# a segunda linha pode ser escrita de outra forma
seq -s \* $1 | bc