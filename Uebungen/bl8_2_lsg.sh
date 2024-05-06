#!/bin/bash

source_dir="/home/matthias/Dokumente"
backup_dir="/home/matthias/Backup"
# spezieller Timestamp)
timestamp=$(date +%d%m%Y%H%M)
# zusammengesetzter Dateiname
backup_file="backup_$timestamp.tar.gz"

# eigentlicher Tar-Befehl: -(c)reate, z(compress), (v)erbose, (f)ilename
tar -czvf "$backup_dir/$backup_file" "$source_dir"
