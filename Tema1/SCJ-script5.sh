#!/bin/bash

read -p "Dime un numero: " num1
read -p "Dime otro numero: " num2

media=$(((num1+num2)/2))

echo "La media es: $media"
