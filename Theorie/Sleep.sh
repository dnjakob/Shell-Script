#!/bin/bash -e

if [[ -z $1 ]]; then
    echo "Fehlender Parameter! Benutzung: ./$0 [Schlafenszeit in Min.]"
    exit 1
fi

echo "Start Schlafenszeit!"

for ((i = 1; i <= $1; i++)); do
    sleep 60
    echo "Die $i.te Minute von $1 Minuten ist vorbei!"
done

echo "Schlafenszeit beendet!"
exit 0