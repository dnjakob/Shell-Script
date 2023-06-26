# Prozesssteuerung und -verwaltung

## Programme im Vordergrund und Hintergrund
Programme, die aus der Konsole gestartet wurden, laufen zunächst dort im
Vordergrund und blockieren somit die Konsole bzw. weitere Eingaben.
Um die Konsole weiter benutzen zu können, kann man die Programme starten mit
'[programm] &'. Eventuelle Meldungen werden weiter auf der Konsole ausgegeben - 
aber sie bleibt frei für neue Eingaben.
Nachträglich in den Hintergrund schieben kann man gestartete Programme, indem
man sie mit 'STRG+Z' anhält (Anhalte-Befehl für Prozesse) und diesen,
angehaltenen Prozess dann mit 'bg' in den Hintergrund schickt.
Es gibt auch den Befehl 'fg', mit dem man in den Hintergrund geschickte Befehle
wieder in den Vordergrund holen kann (Konsole dann wieder von diesem
Vordergrund-prozess blockiert!). Dazu muss man eventuell die "Job-Nummer" (nicht
identisch mit der Prozess-ID!) wissen, die der Prozess bekam, als er in den
Hintergrund geschickt wurde!

## Prozess-Ansichten
Um laufende Prozesse im System anzuzeigen, gibt es viele Hilfsmittel:
- 'ps': Ohne weitere Optionen zeigt es nur die Prozesse an, die auch in dieser
  Konsole gestartet wurden; 'ps aux' zeigt alle Prozesse auf dem System an!
- 'pstree': Zeigt die Prozesse auf dem System in Baumform an
- 'top': Zeigt laufende Prozesse kontinuierlich an (upgedatet alle x Sek.) und
  bietet noch weitere Infos wie CPU/Mem-Ausschöpfung und Zusammenfassungen
- weitere, ausgefeile Tools wie z.B. 'btop'