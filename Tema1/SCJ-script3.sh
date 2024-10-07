#!/bin/bash

ls -l /etc > lista_etc.txt

cat lista_etc.txt

echo "Numero de lineas: $(wc -l < lista_etc.txt)"
echo "Numero de palabras: $(wc -w < lista_etc.txt)" 
