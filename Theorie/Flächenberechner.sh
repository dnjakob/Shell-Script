#!/bin/bash -e

a=
b=

echo -n "Geben Sie die Länge des Rechteckes ein: "
read a

echo -n "Geben Sie die Breite des Rechteckes ein: "
read b

if [[ -z $a ]]; then
    echo "Keine gültige Eingabe!"
    exit 1
fi

if [[ -z $b ]]; then
    echo "Keine gültige Eingabe!"
    exit 1
fi

flaeche=$(( $a * $b ))

echo "Die Fläche des Rechteckes beträgt $flaeche."

exit 0