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

## Prozesse beenden
Laufende Prozesse kann man auf verschiedene Arten "manuell" beenden, falls das 
Programm nicht selbst sauber zu Ende läuft oder einen Fehler aufweist:
- 'kill [PID]': Sendet ein sogenanntes SIGTERM-Signal an den Prozess und beendet
  ihn damit in den meisten Fällen. Hierzu ist notwendig, die Prozess-ID (PID) zu
  wissen, die man durch 'ps aux´ und ähnlichem herausfinden kann.
- 'xkill': Ermöglicht es, durch einen Mausklick, grafische Programme/Fenster zu 
  "killen"
- 'kill -9 [PID]': Sendet das sogenannte SIGKILL-Signal an den Prozess und 
  beendet ihn __sofort__, ohne dass dem Programm irgendwelche Möglichkeiten
  bleiben, Daten zu speichern, Medien zu unmounten etc.. Sollte nur in
  Extremfällen, wenn sonst nichts hilft, verwendet werden!
- 'killall [-9] [Prozessname]': Killt namentlich benannte Prozesse (unter
  Umständen auch mehrere). Die Option "-9" sendet wiederum ein SIGKILL- anstelle
  eines SIGTERM-Signal. Nicht immer zuverlässig; eindeutige
  Prozess-Identifikation geschieht immer über die Prozess-ID.
- Falls die ganze grafische Oberfläche hängt, gibt es die Möglichkeit, auf die
  TTY-Konsole zu wechseln. Bei einer normalen Installation wäre dies möglich
  mit STRG + ALT + FX, wobei FX für die F-Tasten von F3 bis F7 stehen (F1 und F2 
  sind schon belegt durch den Login-Manager und das grafische System). Bei
  unserer Installation in VirtualBox ist diese Kombination der Host-Key
  (Standard: Rechte STRG-Taste) plus FX.
  Dort kann man sich einloggen und mit den bekannten Mitteln versuchen, den 
  hängenden Prozess zu beenden.
- Falls gar nichts mehr hilft und sogar die Tastatur bzw. Maus hängt, kann man
  immer noch, bei Rechnern, die sich im Netzwerk befinden, versuchen, sich 
  remote einzuloggen, z.B. per SSH. Mit entsprechenden User-Rechten und den
  bekannten Tools kann man dann noch so auf Fehlersuche gehen!