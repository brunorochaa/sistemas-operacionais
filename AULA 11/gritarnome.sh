#!/bin/bash
# gritar.sh
#
# Mostra uma palavra ($TXT) em maiúsculas e com exclamações
# Exemplo: foo -> !!!!!FOO!!!!!
# Entrada de Dados
printf "Digite seu nome\n"
read nome
DEBUG=1                                 #Depuração: 0=desligado, 1=liga
# Função de depuração
Debug() {
        [ "$DEBUG" = 1 ] && echo "\033[31;1m$*\033[m"
}
TXT="$nome"
TXT="     $TXT     "                    # Adicionar 5 espaços redor
Debug "TXT com espaços : [$TXT]"
TXT=$(echo "$TXT" | tr ' ' '!')         # Troca os espaços por exclamações
Debug "TXT com exclamações  : [$TXT]"
TXT=$(echo "$TXT" | tr a-z  A-Z)        # Deixa o texto em maiúsculas
Debug "$TXT"                             # Mostra as mensagens
