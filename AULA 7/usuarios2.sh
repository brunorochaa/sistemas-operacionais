#!/bin/bash
#
# usuarios2.sh
# Mostra 1: Mostra  os logins e nomes de usuários do sistema
# Obs: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra usuários e nomes separados por TAB
# Versão 2: Adiciona suporte a opção -h
MENSAGEM_USO="
Uso: $0 [-h]

  -h		Mostra está tela de ajuda e sai

"
# Tratamento das opções de linha de comando
if test "$1" = "-h"
then
	echo "$MENSAGEM_USO"
	exit 0
fi

# Processamento
cut -d : -f 1,5 /etc/passwd | tr : \\t
