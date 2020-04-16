#!/bin/bash
printf "Digite sua idade\n"
read idade

if [ $idade -eq 5 -o $idade -le 7 ]; then
	echo "Infantil A"
elif [ $idade -eq 8 -o $idade -le 10 ]; then
	echo "Infantil B"
elif [ $idade -eq 11 -o $idade -le 13 ]; then
        echo "Juvenil A"
elif [ $idade -eq 14 -o $idade -le 17 ]; then
        echo "Juvenil B"
else
	echo "Adulto"
fi


