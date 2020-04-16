#!/bin/bash
printf "Digite o código de produto\n"
read codigo

if [ $codigo -eq 3 ]; then
	echo "O produto é borracha"
elif [ $codigo -eq 2 ]; then
	echo  "O produto é lápis"
elif [ $codigo -eq 1 ]; then
	echo "O produto é caderno"
else
	echo "Diversos"
fi
