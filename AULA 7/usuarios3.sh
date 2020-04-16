#!/bin/bash
#
# usuarios3.sh
# Mostra 1: Mostra  os logins e nomes de usuários do sistema
# Obs: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra usuários e nomes separados por TAB
# Versão 2: Adiciona suporte à opção -h
# Versão 3: Adiciona suporte à opção -V e opções inválidas
#
# Bruno é o cara, Outubro de 2019
MENSAGEM_USO="
Uso: $0 [-h]

  -h            Mostra está tela de ajuda e sai
  -V		Mostra a versão Do programa e sai
"
# Tratamento das opções de linha de comando
case "$1" in
	-h)
		echo Versão 2
        	exit 0
	;;
	-V)
		echo $0 Versão 3
		exit 0
	;;
	*)
		echo Opção inválida: $1
		exit 1
	;;
esac
# Processamento
cut -d : -f 1,5 /etc/passwd | tr : \\t
