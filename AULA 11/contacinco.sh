#!/bin/bash
contador=1

while [ $contador -le 5 ]
do
	echo "Contando: $contador"
	sleep 1
	contador=$(( contador+1 ))
done
