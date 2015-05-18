[Zur�ck](Kreativ.md)

---

# Achte Aufgabe

Um komplexeres Verhalten zu beschreiben, ist es (neben weiteren Eingabem�glichkeiten abseits der Maus) allgemein n�tzlich, einen "erinnerten Zustand" verwenden zu k�nnen, um nicht jeweils nur die Zeit und aktuelle Mausposition zur Bestimmung des Anzuzeigenden zur Verf�gung zu haben.

Hier zun�chst ein recht einfaches Beispiel:

```elm
initial = 0

update event _ _ state =
  case event of
    Space -> state + 1
    _     -> state

scene _ _ state =
  group
  [ text (toString state) ]

main = displayWithState (-200,-150) (200,150) scene initial update Nothing
```

Es gibt einige Dinge zu erkl�ren:

* Wir m�ssen ausdr�cken, was der "erinnerte Zustand" ganz am Anfang sein soll, wenn es noch gar keine zu erinnernde Vergangenheit gibt. Da wir hier einen einfachen Z�hler realisieren wollen, setzen wir daf�r die Zahl `0`.

* Wir m�ssen ausdr�cken, wie sich der Zustand (`state`) �ndern soll, wenn ein Ereignis (`event`) eintritt. Dies geschieht in der `update`-Funktion. Sie f�hrt mittels `case ... of ...` eine Fallunterscheidung auf dem Ereignis durch. Hier wollen wir zun�chst nur auf das Ereignis "Leertaste wurde gedr�ckt" (`Space`) reagieren, und zwar in diesem Fall den Z�hlerstand um `1` erh�hen.

* Um auszudr�cken, dass sich in jedem anderen Fall (als dass die Leertaste gedr�ckt wurde) �berhaupt nichts �ndern soll, verwenden wir die Zeile `_ -> state`. Eine solche oder �hnliche Zeile sollte es im Folgenden immer geben.

* In der `scene`-Funktion steht nun der jeweils aktuelle Zustand als weitere Eingabe zur Verf�gung und kann zur Berechnung der Ausgabe (also der zu machenden Anzeige) verwendet werden. Hier geben wir den aktuellen Z�hlerstand einfach nur direkt aus. Die aktuelle Mausposition und Zeit ignorieren wir dabei (ebenso in der `update`-Funktion).

* Mittels der `displayWithState`-Funktion bringen wir schlie�lich alles zusammen.

Aufgabe: Ver�ndere obiges Programm, so dass der Z�hler bei `10` startet, mittels der Pfeil-Nach-Oben-Taste erh�ht und mittels der Pfeil-Nach-Unten-Taste verringert wird, allerdings nie unter `0` sinkt. Au�erdem soll die Leertaste nun dazu dienen, den Z�hler jederzeit auf `0` setzen zu k�nnen. (F�r die vier Pfeiltasten existieren die Ereignisnamen `Left`, `Up`, `Right` und `Down`.)

---

[Zusatz](Fraktal.md)

