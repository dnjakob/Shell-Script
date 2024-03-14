# Weitere nützliche Utilities und Programme

## bc - Kommandozeilen-Taschenrechner
Da die Shell nicht mit Fliesskommazahlen rechnen kann, ist hier ein weiteres Tool 
notwendig. Auf der Kommandozeile bietet sich hier `bc` an, ein ausgereifter 
"Taschenrechner" mit vielen Funktionen.
Er lässt sich interaktiv wie ein kaufmännischer Rechner benutzen, akzeptiert 
aber auch Input über Sdtout.
Beispiel: `echo "12 + 5" | bc`
Variablen, z.B. in Skripten lassen sich auch befüllen:
`ergebnis=$(echo "12 + 5" | bc)`
Es gibt auch intern Variablen innerhalb bc:
`echo "var=10;var^=2;var" | bc` ergibt "100"
Vergleichsoperatoren mit Wahrheitswerten (1=TRUE, 0=FALSE) und die 
entsprechenden logischen Operatoren "&&, ||, !" lassen sich auch verwenden: 
`echo "10>5 && 5==6" | bc` ergibt 0 (FALSE)
Mathematische Funktionen werden auch unterstützt. z.B. ist s(x) der Sinus, 
c(x) der Cosinus, a(x) der arctangens. l(x) ist der Logarithmus (zur Basis e), 
e(x) ist die Exponentialfunktion, sqrt(x) die Wurzel.
Weitere Funktionen sind length(x) gibt die Anzahl der Ziffern an; read() liest vom 
Standard-Input, scale(x) stellt die Anzahl der Nachkommastellen im Ergebnis ein.
Achtung: Für die Benutzung der mathematischen Funktionen muss mit `bc -l` auch 
die mathematische Bibliothek geladen werden. Diese Option stellt auch per 
default die Anzahl der Nachkommastellen auf 20. Bei gewissen bc-Aufrufen steht 
diese auf 0 und lässt so nur Ganzzahlrechnung zu, was zu Verwirrungen führen 
kann!
Weiterhin gibt es auch Kontrollstrukturen in bc wie "if...else, for(), while"
etc., komplett mit Schleifensteuerungs-Statements wie "break, continue, halt" 
etc. Funktionen lassen sich ebenfalls definieren.