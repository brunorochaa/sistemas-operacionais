#!/bin/bash
# caixa.sh
# Encaixota um texto qualquer vindo da STDIN
#
# Usando caracteres de controle, primero desenha uma caixa:
#
# 		+---------+
#		|	  |
#		|	  |
#		+---------+
#
# Depois coloca o texto recebido via STDIN dentro dessa caixa:
#
#               +---------+
#               |         |
#               |         |
#               +---------+
#
# A separação do código em dois passos  permite personalizar
# Separação a caixa e o texto, podendo-se facilmente adicionar
# cores ou fazer outras formatações
#
# Configuração do usuário
caixa_largura=60
caixa_coluna_inicio=5
caixa_linha_inicio=5
text_max_linhas=20

