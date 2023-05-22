
## Aufgabe 1)

    a)
    sudo useradd -m Gustav

    sudo passwd Gustav
        Eingabe: Gustav

    b)
    sudo groupadd INFO1

    sudo usermod -a -G INFO1 Gustav

## Aufgabe 2)

    a)
    ls -l /home | cut -d" " -f3

    b)
    ls -l /home | cut -d" " -f3 | wc -w

    c)
    cat /etc/group | cut -d: -f1
    cat /etc/group | cut -d: -f1 | wc -w

    d)
    sudo userdel Gustav
    sudo rm -r /home/Gustav
    sudo groupdel INFO1