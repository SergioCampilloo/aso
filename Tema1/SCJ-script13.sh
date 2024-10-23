#!/bin/bash

lista="lista.txt"

echo "          Agenda"
echo "1. Añadir un registro"
echo "2. Buscar"
echo "3. Listar todos los registros"
echo "4. Ordenar alfabeticamente"
echo "5. Borrar el archivo"

read -p "Elige una opcion (1-5): " opcion

case $opcion in 
	1)
	   read -p "Introduce el nombre: " nombre
	   read -p "Introduce la direccion: " direccion
	   read -p "Introduce el telefono: " telefono
	   echo "$nombre, $direccion, $telefono" >> $lista
	;;
	2)
	  read -p "Introduce el nombre, direccion o telefono que quieras buscar: " buscar
	  grep -i "$buscar" $lista
	;;
	3)
	  if [[ -s $lista ]]; then
		cat $lista
	  else
	  	echo "La lista esta vacia o no existe"
	  fi
	;;
	4)
	  if [[ -s $lista ]]; then
		sort $lista -o $lista
		echo "Lista ordenada"
		cat $lista
	  else
		echo "La lista esta vacia o no existe"
	  fi
	;;
	5)
	  if [[ -f $lista ]]; then
	  	rm $lista
		echo "Archivo borrado"
	  else
		echo "El archivo no existe"
	  fi
	;;
	*)
	  echo "Opcion no valida"
	;;
esac
