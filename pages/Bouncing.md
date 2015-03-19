[Zur�ck](Pendulum.md)

---

# Sechste Aufgabe

Ver�ndere folgendes Programm:

```elm
scene _ t =
  let
    h = 50 * t
  in
    group
    [ path [ (-200,-20), (200,-20) ]
    , circle 20 |> move (0,h)
    ]

main = display (400,300) scene (Just (FPS 50))
```

so dass ein auf und ab springender Ball zu sehen ist, wie etwa [hier](http://jvoigtlaender.github.io/Elm-Kurs/examples/Bouncing.html).

[share-elm](http://share-elm.com/sprout/550b00e8e4b0d720e25d6474)

---

[Weiter](Kreativ.md)

