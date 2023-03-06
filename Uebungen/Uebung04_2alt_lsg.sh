echo "Geben Sie eine Anzahl von Minuten an, die von der aktuellen Zeit abgezogen oder addiert werden soll:"
read minutes


if  [[ $minutes -lt 0 ]]; then
    operation="-"
else
    operation="+"
fi


new_time=$(date "+%Y-%m-%d %H:%M:%S" --date="$operation $minutes minutes")

echo "Die neue Zeit ist: $new_time"