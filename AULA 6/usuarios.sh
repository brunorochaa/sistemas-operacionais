#!/bin/bash
#
#usuarios.sh - Emulação do comando em bash.
#
# O comando usuários mostra os logins e nomes de usuários do sistema
# Obs: Lê dados do arquivo /etc/passwd
#
# Bruno, 31 de outubro de 2019
cut -d : -f 1,5 /etc/passwd | tr: \\t
