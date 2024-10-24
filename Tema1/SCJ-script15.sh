#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo "Error. La sintaxis correcta es $0 n"
	exit 1
fi

numero=$1

for (( i=1; i<=10; i++)); do
	resultado=$(( i * numero ))
	echo "$i x $numero = $resultado"
done

