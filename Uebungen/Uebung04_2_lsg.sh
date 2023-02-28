#!/bin/bash

mins=$1

if [[ -z $mins ]]; then
    echo "Falsche Angabe! Benutzung: $0 [Minuten]"
    exit 1
fi

hours=$( date +'%H %M' | cut -d" " -f1 )
# Stunden und Minuten aus "date", Custom-Format
hours=${hours:1:1}
# Diese Zeile sollte eigtl nicht notwendig sein! (Probleme mit führender
# "0"!)
minutes=$( date +'%H %M' | cut -d" " -f2 )

old_H=$hours
old_M=$minutes
# Alte Uhrzeit speichern

zeitinmins=$(( "$hours" * 60 + "$minutes" ))
# Umrechnen der Zeit in Minuten

zeitinmins=$(( $zeitinmins + $mins ))
# Addieren der gewünschten Zeit (oder subtrahieren!)

hours=$(( $zeitinmins / 60 ))
minutes=$(( $zeitinmins % 60 ))
# Zurückrechnen in HH:MM: Minutenzeit DIV 60 (Ganzzahldivision); Minutenzeit
# MODULO 60 für die Minuten

echo "Alte Uhrzeit: "$old_H":"$old_M""
echo "Neue Uhrzeit: "$hours":"$minutes""
# Ausgabe

exit 0

