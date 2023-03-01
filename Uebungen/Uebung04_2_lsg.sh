#!/bin/bash -e

mins=$1

if [[ -z $mins ]]; then
    echo "Falsche Angabe! Benutzung: $0 [Minuten]"
    exit 1
fi

hours=$( date "+%-H" )

minutes=$( date "+%-M" )

old_H=$hours
old_M=$minutes
# Alte Uhrzeit speichern

zeitinmins=$(( "$hours" * 60 + "$minutes" ))
# Umrechnen der Zeit in Minuten

zeitinmins=$(( $zeitinmins + $mins ))
# Addieren der gewünschten Zeit (oder subtrahieren!)

hours=$(( ($zeitinmins / 60) % 24 ))
minutes=$(( $zeitinmins % 60 ))
# Zurückrechnen in HH:MM: Minutenzeit DIV 60 (Ganzzahldivision); Minutenzeit
# MODULO 60 für die Minuten
if [[ ${#hours} -eq 1 ]]; then
    hours="0"$hours
fi

if [[ ${#minutes} -eq 1 ]]; then
    minutes="0"$minutes
fi

if [[ ${#old_H} -eq 1 ]]; then
    old_H="0"$old_H
fi

if [[ ${#old_M} -eq 1 ]]; then
    old_M="0"$old_M
fi

echo "Alte Uhrzeit: "$old_H":"$old_M""
echo "Neue Uhrzeit: "$hours":"$minutes""
# Ausgabe

exit 0
