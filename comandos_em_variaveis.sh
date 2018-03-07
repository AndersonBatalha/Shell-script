#!/bin/bash
#3. Varíaveis que armazenam saídas de comandos 
#Exemplo: nome_variavel=$(comando) ou nome_variavel='comando'

info_sistema=$(uname -a)
echo "Informações do sistema: $info_sistema"

kernel=$(uname -r)
echo "Versão atual do kernel Linux: $kernel"
