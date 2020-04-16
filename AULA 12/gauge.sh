#!/bin/bash
# gauge.sh
# Barra de progresso usando caracteres de controle
#
#    [.................................................]  0%
#    [########################.........................] 50%
#    [#################################################] 100
#
#
# Barra vazia
echo -n '[.................................................]  0%'

passo='#####'

for i in 10 20 30 40 50 60 70 80 90 100; do
        sleep 1
        pos=$((i/2-5))          # Calcula a posção atual da barra
        echo -n '\033[G'        # Vai para o começo da linha
        echo -n "\033[${pos}C"  # Vai para a posição atual da barra
        echo -n "$passo"        # Preenche mais um passo
        echo -n '\033[53G'      # Vai para a posição da porcentagem
        echo -n "$i"            # Mostra a porcentagem
done
echo
