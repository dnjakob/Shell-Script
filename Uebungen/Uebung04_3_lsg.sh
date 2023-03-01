#!/bin/bash -e

a=
b=
c=

read -p "Gib die Länge von a ein: " a

if [[ -z $a ]]; then
    echo "Ungültige Eingabe! Geben Sie einen Wert für a ein!"
    exit 1
fi

read -p "Gib die Länge von b ein: " b

if [[ -z $b ]]; then
    echo "Ungültige Eingabe! Geben Sie einen Wert für b ein!"
    exit 1
fi

read -p "Gib die Länge von c ein: " c

if [[ -z $c ]]; then
    echo "Ungültige Eingabe! Geben Sie einen Wert für c ein!"
    exit 1
fi