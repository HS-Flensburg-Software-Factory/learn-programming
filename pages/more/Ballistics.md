[Zur�ck](Stamping.md)

---

# Elfte Aufgabe

Oft soll eine Zustandsver�nderung nicht nur bei spezifischen Ereignissen wie Tastendr�cken eintreten, sondern auch wenn "lediglich" Zeit vergeht. Betrachte [dieses Beispiel](http://jvoigtlaender.github.io/Elm-Kurs/examples/Ballistics.html), das wir jetzt umsetzen wollen. (Welchen beobachtbaren Effekt hat wiederholtes Dr�cken der `W`-Taste w�hrend des Flugs?)

Zu jedem Zeitpunkt hat die Kanonenkugel eine bestimmte Position und Geschwindigkeit (jeweils als Vektoren darstellbar), diese m�ssen also Teil der Zustandsinformation sein. Unten ist bereits ausprogrammiert, wie sich das Dr�cken der `W`-Taste auf diesen Teil des Zustands auswirken soll, insbesondere auf die `x`-Komponente des Geschwindigkeitsvektors. Unabh�ngig davon muss sich der Zustand jedoch auch �ndern, wenn einfach nur Zeit vergeht. Zu diesem Zweck kann in `update` auf den aktuellen Zeitwert zugegriffen werden. Daneben sollte man aber auch wissen, was der Zeitwert des letzten "Ticks" war, um die seitdem vergangende Zeit bestimmen zu k�nnen. Daher wird der letzte relevante Zeitwert (ganz am Anfang `0`) auch noch zum Teil der Zustandsinformation gemacht.

Vervollst�ndige die `update`-Funktion in folgendem Programm (`Ballistics.elm`):

```elm
type alias Position = (Float,Float)
type alias Velocity = (Float,Float)
type alias State = (Float, Position, Velocity)

alpha = pi/4

initial : State
initial = (0, (10 * cos(alpha), 10 * sin(alpha)), (40 * cos(alpha), 40 * sin(alpha)))

update : Event -> (Float,Float) -> Float -> State -> State
update event _ t' state =
  case (event, state) of
    (W, (t, (x,y), (vx,vy))) -> (t, (x,y), (vx - 5,vy))
    (_, (t, (x,y), (vx,vy))) ->
      let
        dt = t' - t
        x' = ...
        y' = ...
        vx' = ...
        vy' = ...
      in
        (t', (x',y'), (vx',vy'))

scene : (Float,Float) -> Float -> State -> Picture
scene _ _ (_, (x,y), _) =
  group
  [ rectangle (10,2) |> move (5,0) |> rotate alpha
  , circle 1 |> move (x,y)
  ]
  |> scale 3

main = displayWithState (-10,-10) (600,300) scene initial update (Just AnimationFrame)
```

so dass die physikalische Simulation korrekt abl�uft.

Hinweise:

* F�r die Berechnung der neuen Positions- und Geschwindigkeitsvektoren aus den alten ist die Idee der numerischen Integration hilfreich. (Das Zeitdelta `dt` ist ja jeweils bekannt, siehe oben.)

* Die Erdbeschleunigung betr�gt `9.81`.

Denkbare Erweiterungen:

* Visualisiere innerhalb der `scene`-Funktion geeignet den Geschwindigkeitsvektor an die Kanonenkugel.

* Sorge daf�r, dass die Kanonenkugel nicht sofort bei Start des Programms abgefeuert wird, sondern zum Beispiel erst nach Dr�cken der Leertaste, und dass vorher mittels Pfeiltasten der Winkel `alpha` des Kanonenrohrs ver�ndert werden kann. (Daf�r muss nat�rlich der Winkel zus�tzlicher Teil der Zustandsinformation werden. Au�erdem muss eine Information dar�ber gespeichert werden, ob oder ob nicht die Kugel bereits abgefeuert wurde. Daf�r eignet sich der "Typ" `Bool` mit den Wahrheitswerten `False` und `True`, auf denen mit `if ... then ... else ...` gearbeitet werden kann.)

* Mache auch die Geschwindigkeit vor dem Abfeuern per Pfeiltasten ver�nderlich.

Eine Beispielrealisierung mit diesen Erweiterungen (und zus�tzlich der Unterst�tzung mehrfachen Abfeuerns) l�uft [hier](http://jvoigtlaender.github.io/Elm-Kurs/examples/Ballistics_Full.html).

---

[Zusatz](Fraktal.md)

---

([Datei](https://raw.githubusercontent.com/jvoigtlaender/Elm-Kurs/master/src/task11/Ballistics.elm), [@share-elm](http://share-elm.com/sprout/558973cfe4b06aacf0e8a765/0.14/view))

