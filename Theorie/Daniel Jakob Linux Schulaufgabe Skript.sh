#!/bin/bash -e

eingabe=

Fib1=0

Fib2=1

echo -n "Geben Sie eine Zahl ein: "
read eingabe

if [[ -z $eingabe ]]; then
    echo "Keine gültige Eingabe!"
    exit 1
fi

echo "Ausgabe der $eingabe Fibonacci-Zahlen: "

for ((i=1;i<=eingabe;i++)); do
    echo "Fib-$i: $Fib1 "
    Fib_eingabe=$(( Fib1 + Fib2 ))
    Fib1=$Fib2
    Fib2=$Fib_eingabe
done

echo "Ausgabe beendet!"

exit 0