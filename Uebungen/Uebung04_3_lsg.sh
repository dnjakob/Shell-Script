#!/bin/bash -e

a=
b=
c=

read -p "Gib die Länge von a ein: " a
read -p "Gib die Länge von b ein: " b
read -p "Gib die Länge von c ein: " c

if [[ -z $a || -z $b || -z $c ]]; then
    echo "Ungültige Eingabe! Geben Sie einen Wert für a, b und c ein!"
    exit 1
fi


if [[ $(( $a + $b >= $c )) && $(( $b + $c >= $a )) && $(( $a + $c >= $b )) ]]; then
    echo "Dieses Dreieck ist konstruierbar!"
else
    echo "Dieses Dreieck ist nicht konstruierbar! Bitte logische Werte eintragen!"
    exit 2
fi

exit 0