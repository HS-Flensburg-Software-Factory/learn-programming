[Zur�ck](Re-Use.md)

---

# Dritte Aufgabe

Passe `Kreise.elm` so an, dass von den 10 konzentrischen Kreisen die inneren f�nf rot, die �u�eren f�nf gr�n sind:

```elm
import Color exposing (..)

pic i =
  circle (10 * i)

scene _ _ =
  group
  [ pic 1
  , pic 2
  , pic 3
  , pic 4
  , pic 5
  , pic 6
  , pic 7
  , pic 8
  , pic 9
  , pic 10
  ]

main = display (-200,-150) (200,150) scene Nothing
```

<!--
[Datei](https://raw.githubusercontent.com/jvoigtlaender/Elm-Kurs/master/src/Kreise.elm), [@share-elm](http://share-elm.com/sprout/553a89b8e4b06aacf0e89847/0.15/view)
-->

Hinweise:

* Von den Funktionen `rectangle`, `square`, `circle`, `oval`, `path` gibt es Varianten, die uns das Aussehen der gezeichneten Linien ver�ndern lassen.
  W�hrend zum Beispiel `rectangle' (solid black) (30,20)` �quivalent zum schon gesehenen `rectangle (30,20)` ist, geht auch `rectangle' (dashed red) (30,20)`:  
  ![rectangle'](../images/rectangle'.png)  
  oder auch etwa `oval' (dotted blue) (30,20)`:  
  ![oval'](../images/oval'.png)  
  Eine �bersicht vorhandener Farben und M�glichkeiten zur Erzeugung neuer findet man bei Bedarf [hier](http://package.elm-lang.org/packages/elm-lang/core/latest/Color).

* Um abh�ngig von irgendeiner Bedingung verschiedene Ergebnisse (zum Beispiel einer Funktion wie `pic i = ...`) zu liefern, l�sst sich `if ... then ... else ...` verwenden.

Zielbild:

![Farbige Kreise](../images/Kreise.png)

---

[Weiter](Maus.md)

