#!/bin/bash

for ((i=1; i<=5; i++)); do
	for ((j=1; j<=$i; j++)); do
		echo -n "$j"
	done
	echo ""
done
