#!/bin/bash
clear
echo "Digite o nome do diretório que deseja criar: "
read diretorio

if [ -e $diretorio ]; then
	echo "Esse diretório existe"
	sleep 10s
	clear
else
	mkdir $diretorio
	echo "Diretório criado com sucesso"
fi
