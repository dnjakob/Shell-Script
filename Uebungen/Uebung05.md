# Linux INFO2 Übungsblatt 5

Regular Expressions; wir benutzen als Such-Datei die Datei "netzwerk.md" im
Theorie-Verzeichnis

## Aufgabe 1
### a)
Finde den String "Datei"

grep "Datei" netzwerk.md

### b)
Finde nun das genaue Wort "Datei"

grep -w "Datei" netzwerk.md

### c)
Finde alle Angaben von IPs (IP4s)

grep -P "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" netzwerk.md

### d)
Finde die Anzahl der Vorkommen von "Addresse" (klein- und großgeschrieben)
Tip: grep -o liefert Ergebnisse einzeln auf eigenen Zeilen zurück; grep -c
liefert die Anzahl der Treffer(zeilen) zurück

grep -w -o "[Aa]dresse" netzwerk.md | wc -w

### e)
Finde alle Wörter, die ein Doppel-"t" sowie ein Doppel-"l" beinhalten
(in dieser Reihenfolge)

grep "\w*tt\w*ll\w*" netzwerk.md

### f)
Finde alle Wörter, die mit "s" beginnen und mit "n" enden

grep -w "[Ss]\w*[Nn]" netzwerk.md

### g)
Finde alle Strings, die eingeklammert "()" sind

grep -P "\(.+?\)" netzwerk.md

## Aufgabe 2
Zur Abwechslung suchen wir nun einmal in der Datei `dateien.md`
### a)
Finde alle Vorkommen von Markdown-Unterüberschriften - d.h. die Zeile muss mit
einem `##` anfangen!

grep "^grep##" dateien.md

### b)
Finde nun (übergeordnete, nicht-geschachtelte) Markdown-Listeneinträge. Wieviele
davon gibt es?

grep "^- " dateien.md

### c)
Finde die Zeilen, die mit einem Punkt oder einem Ausrufezeichen enden!

grep "[\.\!]$" dateien.md

### d)
Finde die Vorkommen des Wortes "default". Dabei soll Groß/Kleinschreibung
unberücksichtigt bleiben - und es soll auch wirklich nur das Wort markiert
werden!

grep -w '[Dd]efault' dateien.md

### e)
Finde die Strings "werden ... einem"; wobei die Punkte für "alles, was dort
dazwischen stehen kann" stehen - z.B. "werden mit einem", "werden bei einem"
usw.

grep -E "\bwerden(.*)einem\b" dateien.md

### f)
Kurzer Rückausflug zur `netzwerk.md`: Finde die dort enthaltene IP-Addresse
nochmals, mit einer jetzt möglichst etwas verfeinerten Methode!


### g)
Finde alle Vorkommnisse von je zwei Strings auf einer Zeile, die mit "der"
beginnen (also "der...der")


### h)
Finde Vorkommen von Wörtern, die mit "Datei-" starten und mit "Endungen",
"Erkennung" oder "Typen" enden!

grep -E "\bDatei-(Endungen|Erkennung|Typen)\b" dateien.md

### i)
Finde die Zeilen, in denen die Sticky-, Setuid- und Setgid- "bit"s vorgestellt
werden! (nur die erste Zeile!)

grep -E "^- (Setuid|Setgid|Sticky)-bit" dateien.md

"Am Zeilenanfang steht ein Bindestrich, gefolgt von einem Leerzeichen, gefolgt von den drei zu suchenden Begriffen"