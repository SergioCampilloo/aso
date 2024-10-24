#!/bin/bash

suma=0

read -p "Dime un numero para sumar(0 para terminar): " numero

while [[ $numero -ne 0 ]]; do
	suma=$(( suma + numero ))
	read -p "Dime otro numero para sumar(0 para terminar): " numero
done

echo "La suma total es: $suma"
