#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Error. La sintaxis es $0 numero"
	exit 1
fi

numero=$1

contador=0

for ((i=1; i<=numero; i++)); do
	if [[ $((numero % i)) -eq 0 ]]; then
		contador=$(( contador + 1 ))
	fi
done

if [[ $contador -eq 2 ]]; then
	echo "El numero $numero es primo"
else
	echo "El numero $numero no es primo"
fi
