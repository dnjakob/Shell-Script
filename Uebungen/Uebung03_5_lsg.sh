#!/bin/bash -e

N=

echo -n "Gib eine Zahl ein, bis zu der ausgegeben werden soll: "
read N

if [[ -z $N ]]; then
    echo "Keine gültige Eingabe! Abbruch!"
    exit 1
fi
# Standard: Eingabe N + Test auf leere Variable

# 2 Möglichkeiten für die for-Schleife (von 1 bis $N): Einmal mit Utility "seq"
# und Kommandozeilen-Substitution und for-Schleife C-Style.
for i in $(seq $N) ; do
# for ((i=1;i<=$N;i++)); do
    # Abfrage nach den Teilbarkeiten mit Modulo (%); Teilbarkeit durch 15 als
    # erstes angeführt, weil ja auch teilbar durch 3 und 5 (siehe Aufgabe!)
    # Dann: Entsprechende Ausgabe; Wenn nichts zutrifft, dann Ausgabe Zahl
    if [[ $(($i % 15)) -eq 0 ]]; then
        echo "fizzbuzz"
    elif [[ $(($i % 3)) -eq 0 ]]; then
        echo "fizz"
    elif [[ $(($i % 5)) -eq 0 ]]; then
        echo "buzz"
    else
        echo $i
    fi
done

exit 0

