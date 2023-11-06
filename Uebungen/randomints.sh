#!/bin/bash

read -p "Bitte eintragen, wieviele Zahlen generiert werden sollen: " N

if [[ -z $N ]]; then
    echo "Ungültige Eingabe"
    exit 1
fi

for ((i=1;i<=$N;i++)); do
    echo $RANDOM
done

# ...um eine glatte Tausender-Zahl zu garantieren
echo 4000

exit 0

