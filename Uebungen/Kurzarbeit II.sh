#!/bin/bash -e

i=
j=
k=

for ((i = 0; i <= 15; i++)); do
    for ((j = 0; j <= 15; j++)); do
        k=$(( $i * $j ))
        echo -n "$(tput setaf $k)VG $(tput sgr0)"
    done
    echo $'\n'
done

for ((i = 0; i <= 15; i++)); do
    for ((j = 0; j <= 15; j++)); do
        k=$(( $i * $j ))
        echo -n "$(tput setab $k)HG $(tput sgr0)"
    done
    echo $'\n'
done

exit 0
