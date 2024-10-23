#!/bin/bash

if [[ "$#" -le 3 ]] || [[ "$#" -ge 5 ]]; then
	echo "Error. La sintaxis es: $1 alta/baja nombre apellido1 apellido2 [grupo]"
	exit 1
fi

orden=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

identidad="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

if [[ "$orden" == "alta" ]]; then
	if id "$identidad" &>/dev/null; then
	   echo "Error: El usuario ya existe"
	   exit 1
	fi

	if [[ -z "$grupo" ]]; then
	   grupo=$identidad
	   sudo groupadd "$grupo"
	fi

	sudo useradd -m -g "$grupo" -s /bin/bash "identidad"
	echo "Usuario creado"

elif [[ "$orden" == "baja" ]]; then
	if ! id "$identidad" &>/dev/null; then
	    echo "Error: El usuario no existe"
	    exit 1
	fi
	
	sudo userdel -r "$identidad"
	echo "Usuario eliminado"
else
	echo "Error. La sintaxis es: $1 alta/baja nombre apellido1 apellido2 [grupo]"
        exit 1
fi

