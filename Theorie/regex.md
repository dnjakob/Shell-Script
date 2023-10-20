# Regular Expressionss

werden verwendet z.B. im Serial Editor __sed__ oder auch im Text-Suchtool
__grep__: hier muss eventuell die Option _-E_ oder _-P_ (extended bzw. 
Perl-style regular expressions) angegeben werden!

* Eine Suche nach einem einfachen String liefert genau die Vorkommen dieses
  Strings zurück - also auch mit vorangehenden oder folgenden Zeichen
* Der Punkt __"."__ ist ein einfacher Platzhalter für _ein_ beliebiges
  Zeichen. Wiederholt hintereinander stehende Punkte stehen für die 
  entsprechende Anzahl von Zeichen.
* Zeichen, die in eckigen Klammern angegeben werden (z.B. "[abc]") stehen für
  eine _Auswahl_ aus diesen Zeichen: eines davon muss für ein Match zum 
  Suchwort passen. Man kann auch Bereiche angeben: z.B. [A-F], [f-p], [0-8] 
  etc. Dies lässt sich auch kombinieren (z.B. [a-c2-5xy]) und auch "negieren"
  (verneinen) - d.h. die Auswahl in den eckigen Klammern umzukehren. [^e] 
  heisst dann: Suche alle Zeichen _ausser_ dem "e". Utilities wie __grep__ 
  haben evtl. Erweiterungen, die man in der Form [[:digit:]] (Bsp: Ziffern) 
  etc. einsetzen kann.
* Multiplikatoren:
    - Ein Asterisk "\*" steht für die Wiederholung des vorangegangenen Zeichens
      (oder auch der Zeichenmenge) - beliebig oft, inklusive _null-mal_!
    - Ein Plus "\+" steht für die Wiederholung _ein_ - oder mehrmals
    - Das Fragezeichen "\?" steht für die _null_ - oder _einmalige_ Wiederholung
    - Genaue Wiederholungszahlen können in geschweiften Klammern angegeben 
      werden, wobei auch Bereiche zulässig sind. "z{3}, z{1,3}, z{2,} stehen 
      also für "dreimal z", "z ein - bis dreimal" und "z mind. zweimal 
      hintereinander, nach oben offen"
    - Per Default erfasst z.B.: "\*" die maximal mögliche Anzahl an Charakteren 
      ("greedy matching"). Man kann durch Dahinterstellen von "\?" (also z.B. 
      "\*\?") ein non-greedy matching erzwingen, die die minimal mögliche Anzahl 
      an Charakteren erfasst. Dies funktioniert in grep aber nur mit der Option 
      "__-P__" (Perl-Style-Matching)
* Diese funktionalen Metacharaktere können auch "escaped" werden, falls die 
  ursprüngliche Bedeutung gebraucht wird. Ein Punkt wird also nur zu einem Punkt 
  (im Gegensatz zu: beliebiges Zeichen), indem man ihm einen Backslash 
  voranstellt, also "\.". Analoges gilt auch für z.B. "?, +" etc.
* Es gibt auch "Kurzversionen" von Zeichen-Klassen, die mit einem Backslash 
  beginnen:
  - \s erfasst alles, was "Whitespace" ist (Leerzeichen, Tabulatoren)
  - \S erfasst das Gegenteil - alle non-Whitespaces
  - \d erfasst alle Ziffern - analog zu [0-9]
  - \D erfasst das Gegenteil - analog zu [^0-9]
  - \w erfasst alle "Wort"-Charaktere - analog zu [a-zA-Z0-9]
  - \W erfasst das Gegenteil - analog zu [^a-zA-Z0-9]. Damit können gezielt 
* Erfassen von non-printable characters:
  - \t für Tabulatoren
  - \r für Carriage Return (Wagenrücklauf)
  - \n für Line Feed (Zeilenvorschub)
  Bemerkung: Eine neue Zeile wird, je nach OS, anders gekennzeichnet: 
  - Windows: \r\n
  - MacOS: \r
  - Linux\Unix: \n
* Ankerzeichen: 
  Man kann Zeichenketten am Anfang oder am Ende der Zeile suchen: 
  '^' für den Anfang der Zeile
  '$' für das Ende der Zeile
* Wortbegrenzungen:
  - \< repräsentiert den Anfang eines Wortes 
  - \> steht für das Ende des Wortes
  - \b entweder Anfang oder Ende eines Wortes