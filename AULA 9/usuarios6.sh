#!/bin/bash
#
#usuarios3.sh
# Mostra 1: Mostra  os logins e nomes de usuários do sistema
# Obs: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra usuários e nomes separados por TAB
# Versão 2: Adiciona suporte à opção -h
# Versão 3: Adiciona suporte à opção -V e opções inválidas
# Versão 4: Arrumando bug quando não tem opções, basename no nome  do programa
# , -V extraindo direto dos cabeçalhos, adicionais opções --help e --version
# Versão 5: Adicionar as opções -o e --sort
# Versão 6: Adicionar as opções -r, --reverse, -u, --uppercase, leitura
# de múltiplas opções(loop)
#
# Bruno, Outubro de 2019
ordenar = 0		# A saída deverá ser ordenada?
inverter = 0		# A saída deverá sair invertida?
maiusculas = 0 		# A saída deverá sair maiúscula?
MENSAGEM_USO="
Uso: $(basename "$0") [-r | -s | -u | -h | -V]

  -r, --reverse            Inverte a listagem
  -s, --sort 		   Ordena em ordem alfabética
  -u, --uppercase          Mostra a listagem em MAIÚSCULA
  -h, --help		   Mostra está tela de ajuda e sai
  -V, --version            Mostra a versão Do programa e sai
"
# Tratamento das opções de linha de comando
case "$1" in
	-s | --sort)
		ordenar=1
	;;
	-r | --reverse)
		inverter=1
	;;
	-u | -uppercase)
		maiusculas=1
	;;
        -h | --help)
                echo "$MENSAGEM_USO"
                exit 0
        ;;
        -V | --version)
		-n $(basename "$0")
		# Extrai a versão direamente dos cabeçalhos  do programa
                grep '^#Versão' "$0" | tail -1 | cut -d : -f 1| -tr -d\#
                exit 0
        ;;
        *)
		if test -n "$1"
		then
                	echo Opção inválida: $1
               		 exit 1
		fi
        ;;
esac
# Extrai a listagem
lista=$(cut -d : -f 1,5 /etc/passwd)
# Ordenar a listagem(se necessário)
if test "$ordenar" = 1
then
	lista=$(echo "$lista" | sort)
fi
# Inverte  a listagem(se necessário)
if test "$inverter" = 1
then
        lista=$(echo "$lista" | tac)
fi
# Converte para maiúsculas(se necessário)
if test "$maiusculas" = 1
then
        lista=$(echo "$lista" | tr a-z A-Z)
fi

# Mostrar o resultado para o usuário
	echo "$lista" | tr : \\t
