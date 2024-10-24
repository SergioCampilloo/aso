#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Error. Sintaxis: $0 /ruta_completa_del_directorio"
	exit 1
fi

directorio=$1

if [[ ! -d $directorio ]]; then
	echo "Error. $directorio no es un directorio valido"
	exit 1
fi

contador=0

for entrada in "$directorio"/*; do
	if [[ -d $entrada ]]; then
		echo "$entrada es un directorio"
	else
		echo "$entrada es un fichero"
	fi
	contador=$((contador + 1))
done

echo "Numero total de entradas: $contador"
