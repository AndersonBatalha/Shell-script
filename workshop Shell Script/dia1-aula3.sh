#Dia 1, Aula 3 --> Comando test
# Sintaxe : [ ... ] 
# built-in do shell

# Nova sintaxe [[ argumentos ]] **separados por espaço

H=20:24
if [[ $H == [01][0-9]:[0-5][0-9] || $H == 2[0-3]:[0-5][0-9] ]]; then echo Hora legal; else echo horário furado; fi

if [[ $H =~ ([01][0-9]|2[0-3]):[0-5][0-9] ]]; then echo Hora legal; else echo horário furado;  fi

if [[ $H =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]]; then echo Hora legal; else echo horário furado;  fi