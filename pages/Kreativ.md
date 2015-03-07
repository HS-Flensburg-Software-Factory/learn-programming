[Zur�ck](Bouncing.md)

---

# Siebte Aufgabe

Ver�ndere folgendes Programm:

```elm
import List

list =
  [ (circle 10, 0)
  , (square 15, pi/2)
  , (circle 10, pi)
  , (square 15, 1.5*pi)
  ]

scene (x,y) t =
  let
    fun i (form, alpha) =
      let
        (ax,ay) = (120 * cos(alpha + t/1500), 120 * sin(alpha + t/1500))
        image = group [form, text (toString i)]
      in
        move (ax,ay) image
  in
    group (List.indexedMap (fun << toFloat) list)

main = show scene (Just (FPS 50))
```

so dass interessantes, von sowohl der Zeit als auch der Mausbewegung abh�ngiges Verhalten entsteht.
Zum Beispiel [so etwas](http://jvoigtlaender.github.io/Elm-Kurs/examples/Kreativ.html).

Der Kreativit�t freien Lauf!

