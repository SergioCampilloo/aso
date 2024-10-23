#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Error: Numero de parametros erroneo. Uso: $0 archivo_origen archivo_destino"
	exit 1
fi

archivo_origen=$1
archivo_destino=$2

if [[ ! -f $archivo_origen ]]; then
	echo "Error: El archivo no existe o no es archivo ordinario"
	exit 1
fi

if [[ -e $archivo_destino ]]; then
	echo "Error: El archivo ya existe"
	exit 1
fi

cp "$archivo_origen" "$archivo_destino"
