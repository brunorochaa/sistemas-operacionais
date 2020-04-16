#!/bin/bash
# pega-url-1.sh
# Extrai o endereço de um link HTML
TEXTO="Google"
fgrep "$TEXTO" pagina1.html | cut -d\" -f2
