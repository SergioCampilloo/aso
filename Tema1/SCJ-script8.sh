#!/bin/bash

read -p "Introduce un numero: " numero1
read -p "Introduce otro numero: " numero2

if [[ $numero1 -gt $numero2 ]]; then
	echo "El número $numero1 es mayor que $numero2"
elif [[ $numero1 -lt $numero2 ]]; then
	echo "El numero $numero2 es mayor que $numero1"
else
	echo "Los numeros son iguales"
fi
