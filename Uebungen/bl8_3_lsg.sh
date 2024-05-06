#!/bin/bash

back_dir="/home/daniel/Backup"

for f in $back_dir/*.tar.gz; do
    mv -- "$f" "${f%.tar.gz}_old.tar.gz"
done

bash bl8_2_lsg.sh

find "$back_dir/" -type f -mtime +30 -name '*.tar.gz' -execdir rm -- '{}' \;

exit 0