#!/bin/bash
clear
echo "Digite o primeiro número: "
read n1
echo "Digite o segundo número: "
read n2

if [ $n1 -eq $n2 ]; then
	echo "Números iguais"
	sleep 5s
	clear
elif [ $n2 -gt $n1 ]; then
	echo "Ordem crescente: $n1-$n2"
	sleep 5s
	clear
elif [ $n1 -gt $n2 ]; then
	echo "Ordem decrescente: $n2-$n1"
	sleep 5s
	clear
fi
