#!/bin/bash -e

i=0
j=0
k=0

while [[ $j -le 15 ]]; do
    i=0
    while [[ $i -le 15 ]]; do
     echo -n "$(tput setaf $k)VG $(tput sgr0)"
     i=$(( $i + 1 ))
     k=$(( $i * $j ))
    done
    j=$(( $j + 1 ))
    k=$(( $i * $j ))
    echo $'\n'
done

i=0
j=0
k=0

while [[ $j -le 15 ]]; do
    i=0
    while [[ $i -le 15 ]]; do
     echo -n "$(tput setab $k)HG $(tput sgr0)"
     i=$(( $i + 1 ))
     k=$(( $i * $j ))
    done
    j=$(( $j + 1 ))
    k=$(( $i * $j ))
    echo $'\n'
done

exit 0


