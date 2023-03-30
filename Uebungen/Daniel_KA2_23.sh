#!/bin/bash -e

                              # Daniel Jakob Note: 3

i=0
j=0
k=0

while [[ $j -le 15 ]]; do
    while [[ $i -le 15 ]]; do
     echo "$(tput setaf $k)VG $(tput sgr0)"
     i=$(( $i + 1 ))
     j=$(( $j + 1 ))
     k=$(( $i * $j ))
    done
    echo "$(tput setab $k)VG $(tput sgr0)"
    j=$(( $j + 1 ))
    k=$(( $i * $j ))
    # Du setzt hier die Werte mehrfach hoch -aber leider in der äußeren
    # Schleife nicht wieder $i = 0. Deswegen gibts nur eine Spalte.
    # Außerdem sollte man es schlußendlich eher zeilenweise aufbauen und oben
    # doch "echo -n" sagen, gefolgt von gelegentlichen Zeilenumbrüchen 'echo
    # ""'.
done

i=0
j=0
k=0

while [[ $j -le 15 ]]; do
    while [[ $i -le 15 ]]; do
     echo "$(tput setaf $k)HG $(tput sgr0)"
     i=$(( $i + 1 ))
     k=$(( $i * $j ))
    done
    echo  "$(tput setab $k)HG $(tput sgr0)"
    j=$(( $j + 1 ))
    k=$(( $i * $j ))
done

exit 0

# Algorithmus würde grundsätzlich stimmen; o.g. Fehler schränken das Skript
# leider aber doch ziemlich ein! -MO
