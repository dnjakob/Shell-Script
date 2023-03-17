#!/bin/bash -e

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
    echo "$(tput setab $k)HG $(tput sgr0)"
    j=$(( $j + 1 ))
    k=$(( $i * $j ))
done

exit 0


