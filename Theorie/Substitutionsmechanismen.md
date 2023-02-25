#   Substitutionsmechanismen

## Definition
- Darstellung von mit Sonderzeichen erstellte Kommandos zu einem Ergebnis
- Wird im Zusammenhang mit Dateinamen auch "Globbing" genannt

## Variationen
- Jokerzeichen
    + ?        : ein beliebiges Zeichen
    + *        : beliebig viele (auch null) beliebige Zeichen
    + **       : alle Dateien und Verzeichnisse, auch aus allen Unterverzeichnissen (globstar muss erst unter shopt gesetzt sein mit "shopt -s globstar" ab bash 4.0)
- Verzeichnisse
    + ~        : Heimatverzeichnis
    + .        : aktuelles Verzeichnis
    + ..       : übergeordnetes Verzeichnis
- Zeichenketten
    + [abc]    : eines der angegebenen Zeichen
    + [a-j]    : ein Zeichen aus dem angegebenen Bereich
    + [!abc]   : keines der angegebenen Zeichen ([^abc] bewirkt dasselbe)
- Klammererweiterungen (Zeichenkettenkombinationen)
    + a{1,4,6} : gibt a1 a4 a6 aus
    + a{1..4}  : gibt a1 a2 a3 a4 aus
- arithmetische Ausdrücke
    + $((4+3))  : gibt 7 aus
    + $[4-3]    : gibt 1 aus
- Variablen
    + $var              : liefert den Inhalt der Variable
    + var='Hello World' : Festlegung des Inhaltes der Variable--

## Beispiele
- Beispiel 1: Bildung einer simplen Kette mit anschließender Anzahl der Kombinationen
    + echo {a..d}{e..h}-{1,3,9} | wc -w
- Beispiel 2: Aufzählung aller js-Dateien, die sich in ALLEN Verzeichnissen befinden
    + ls **/*.js | wc -l
- Beispiel 3: Erstellung einer Variable, worin eine Rechnung gemacht wird
    + rechnung=$[4*8+5*3/3]
    + echo $rechnung