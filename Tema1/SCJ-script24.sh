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

ficheros=0
subdirectorios=0

for entrada in "$directorio"/*; do
	if [[ -d $entrada ]]; then
		subdirectorios=$((subdirectorios+1))
	else
		ficheros=$((ficheros+1))
	fi
done

echo "En el directorio $directorio tenemos: $ficheros ficheros y $subdirectorios subdirectorios"
