#!/bin/bash

suma=0
i=1

until [[ $i -gt 1000 ]]; do
	suma=$(( suma + i ))
	i=$(( i+1 ))
done

echo "La suma es: $suma"