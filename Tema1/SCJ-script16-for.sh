#!/bin/bash

suma=0
for (( i=1; i<=1000; i++ )); do
	suma=$(( suma + i ))
done

echo "La suma es: $suma"
