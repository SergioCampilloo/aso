#!/bin/bash

echo "      Calculadora      "
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"


read -p "Dime un numero: " numero1
read -p "Dime otro numero: " numero2

read -p "Elige una opcion (1-4): " opcion

case $opcion in
	1)
	 resultado=$((numero1 + numero2))
	 echo "El resultado de la suma es: $resultado"
	 ;;
	2)
	 resultado=$((numero1 - $numero2))
	 echo "El resultado de la resta es: $resultado"
	 ;;
	3)
	 resultado=$((numero1 * $numero2))
	 echo "El resultado de la multiplicacion es: $resultado"
	 ;;
	4)
	 if [[ $numero2 -eq 0 ]]; then
	   echo "No se puede hacer una division entre 0"
	 else
	   resultado=$(echo "scale=4; $numero1 / $numero2" | bc -l)
	   echo "El resultado de la division es: $resultado"
	 fi
	 ;;
	*)
	 echo "Opcion no valida"
	 ;;
esac
