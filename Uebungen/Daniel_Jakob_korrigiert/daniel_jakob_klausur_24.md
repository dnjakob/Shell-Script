#### D.J. Note: 2 -MO
# Daniel Jakob Linux-Klausur 2024

1.) RegEx

a.) grep -P 'Netz\w+' aufg1vorgabe.txt
b.) grep -P '(\w+\-)+\w+' aufg1vorgabe.txt
#### Der "-" müsste eigtl. nicht escaped werden -MO
c.) grep -P '^[ANK]\w+' aufg1vorgabe.txt
d.) grep -P '[A-Z]{2,}' aufg1vorgabe.txt
e.) grep -P '\w+[ÄÖÜäöü]\w+' aufg1vorgabe.txt
f.) grep -P '(\w+\W)*(400 Gbit/s ab)$' aufg1vorgabe.txt
#### alles ok, 12P. -MO

2.) proc
siehe daniel_jakob_klausur_24_1.sh
#### im Skript fehlt die Umrechnung kB->MB! Ansonsten ok, 8P. -MO

3.) log
siehe daniel_jakob_klausur_24_2.sh
#### 'sudo' ist nicht notwendigerweise ein Kriterium für (nicht-)CRON 4P. -MO
#### 3b) fehlt 0P. -MO

#### Gesamt: 24 Punkte -MO
