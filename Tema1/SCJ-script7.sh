#!/bin/bash

dir=$1

fecha=$(date +"%Y-%m-%d")

tar -czvf "${fecha}_${dir}.tar.gz" "$dir"
