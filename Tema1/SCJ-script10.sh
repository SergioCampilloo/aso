#!/bin/bash

read -p "Introduce un numero: " numero1

resultado=$(($numero1 % 2))

if [[ $resultado -eq 0 ]]; then
	echo "El numero es par"
else
	echo "El numero es impar"
fi
