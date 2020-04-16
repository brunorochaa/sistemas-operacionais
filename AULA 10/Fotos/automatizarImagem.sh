#!/bin/bash
#
#automatizarImagem.sh
# Converte tipo de imagem de jpg para png
#
# Bruno, Novembro 2019
for img in *.jpg;
do
	filename=${img%.*}
	convert "$filename.jpg" "$filename.png"
done
