[Zur�ck](Kreise.md)

---

# F�nfte Aufgabe

Vervollst�ndige nun so, dass immer genau die Kreise rot sind, die n�her am Koordinatenursprung sind als der Mauszeiger (und die anderen gr�n):

```elm
import List

scene p _ =
  List.map (ithCircle p) [ 1 .. 10 ]

ithCircle (x,y) i = ...

main = show scene Nothing
```

Zielverhalten wie hier: [Reagieren auf Mausbewegungen](http://jvoigtlaender.github.io/Elm-Kurs/examples/Kreise.html).

