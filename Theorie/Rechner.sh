#!/bin/bash -e

x=
y=
r=

echo -n "Geben Sie ihre erste Zahl ein: "
read x

echo -n "Geben Sie ihre zweite Zahl ein: "
read y

echo -n "Geben Sie an, wie der Wert berechnet werden soll (a,s,d und m): "
read r

if [[ -z $x ]]; then
    echo "Keine gültige Eingabe!"
    exit 1
fi

if [[ -z $y ]]; then
    echo "Keine gültige Eingabe!"
    exit 1
fi

case $r in
    a) ergebnis=$(( $x + $y ));;
    s) ergebnis=$(( $y - $x ));;
    d) ergebnis=$(( $x / $y ));;
    m) ergebnis=$(( $x * $y ));;
esac

echo "Das Ergebnis der ausgewählten Rechnung lautet: $ergebnis."

exit 0