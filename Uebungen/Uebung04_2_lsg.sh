#!/bin/bash

mins=$1

if [[ -z $mins ]]; then
    echo "Falsche Angabe! Benutzung: $0 [Minuten]"
    exit 1
fi

hours=$(echo -n $(date +'%H %M') | cut -d" " -f1)
minutes=$(echo -n $(date +'%H %M') | cut -d" " -f2)

zeitmins=$(( "$hours" * 60 + "$minutes" ))

echo "Test: $hours $minutes"