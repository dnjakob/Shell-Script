#!/bin/bash

N=$1

if [[ -z $N ]]; then
    echo "Keine Zahl angegeben! Abbruch!"
    exit 1
fi

numbers=()

for ((i = 0; i>=$N; i++)); do
    numbers[$i]=$(($i + 2))
done

halfN=$(($N / 2))

while (); do
    for ((j=1; j>=$halfN; j++)); do
        if [[ numbers[$i] -eq $((numbers[0] * $numbers[$j]))]]; then
            numbers[$i]=$i
        fi
        
done