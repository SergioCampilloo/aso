#!/bin/bash

numero_adivinar=33

read -p "Adivina el numero del 1 al 100 (0 para rendirte): " numero

while [[ $numero -ne 0 ]] && [[ $numero -ne $numero_adivinar ]]; do
	if [[ $numero -lt $numero_adivinar ]]; then
		echo "El numero a adivinar es mas grande"
	elif [[ $numero -gt $numero_adivinar ]]; then
		echo "El numero a adivinar es mas pequeño"
	fi
	read -p "Adivina el numero del 1 al 100 (0 para rendirte): " numero
done

if [[ $numero -eq $numero_adivinar ]]; then
	echo "Enhorabuena, Has adivinado el numero"
else
	echo "Te has rendido, el numero era: $numero_adivinar"
fi
