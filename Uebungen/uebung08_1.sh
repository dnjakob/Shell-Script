#!/bin/bash

N=$1

if [[ -z $N ]]; then
    echo "Keine Zahl angegeben! Abbruch!"
    exit 1
fi

numA=()

for ((i = 0; i<=$N; i++)); do
    numA[$i]=$(($i + 2))
done

halfN=$(($N / 2))

for ((i=2; i<=$N; i++)); do
    if [[ numA[$i] -eq 1 ]]; then
        j=$(($i * $i))
        while j < $N; do
            for ((j))


echo ${numA[@]}
echo ${numB[@]}

exit 0