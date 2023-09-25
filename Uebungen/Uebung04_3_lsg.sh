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


if [[ $(( $a + $b )) -ge $c  ]] && [[ $(( $b + $c )) -ge $a ]] && [[ $(( $a + $c )) -ge $b ]]; then
    echo ""
else
    echo "Dieses Dreieck ist nicht konstruierbar, bitte logische Werte eintragen!"
    exit 2
fi

if [[ $a -eq $b ]] && [[ $a -eq $c ]]; then
    echo "Dieses Dreieck ist gleichseitig!"
elif [[ $a -ne $b ]] && [[ $a -ne $c ]]; then
    echo "Dieses Dreieck ist ein allgemeines!"
else
    echo "Dieses Dreieck ist ein gleichschenkliges!"
fi
exit 0