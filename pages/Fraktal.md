[Zur�ck](Ballistics.md)

---

# Zusatzaufgabe(n)

Vervollst�ndige folgendes Programm (`Fraktal.elm`):

```elm
scene : (Float,Float) -> Float -> Picture
scene _ _ =
  sierpinski 4

sierpinski : Int -> Picture
sierpinski i = 
  if i > 0
    then
      let 
        s = sierpinski (i-1) |> scale 0.5
      in
        ...
    else
      ngon 3 120

main = display (-200,-150) (200,150) scene Nothing
```

so dass `sierpinski i` jeweils die `i`. Stufe des [Sierpinski-Dreiecks](http://de.wikipedia.org/wiki/Sierpinski-Dreieck) darstellt, wobei der Umkreisradius des Gesamtdreiecks gleich `120` sein soll.

Hinweise:

* Analog zu `|> move ...` wirkt `|> scale ...` auf ein beliebiges Teilbild, verschiebt dieses jedoch nicht, sondern streckt/staucht es.

* Die Beziehung zwischen Seitenl�nge `a` und Umkreisradius `r` in einem gleichseitigen Dreieck betr�gt `a = r * sqrt(3)`. Au�erdem gilt, dass der Inkreisradius halb so gro� wie der Umkreisradius ist.

Zielbild, f�r `i = 4`:

![Sierpinski-Dreieck](../images/Sierpinski.png)

Zusatz: Setze eine andere fraktale Darstellung um. Zum Beispiel den [Sierpinski-Teppich](https://de.wikipedia.org/wiki/Sierpinski-Teppich), die [Koch-Kurve](http://de.wikipedia.org/wiki/Koch-Kurve) oder, bewegt, [so etwas hier](http://jvoigtlaender.github.io/Elm-Kurs/examples/DancingTree.html). N�tzlich ist als weitere "Bildmanipulation" neben `|> move ...` und `|> scale ...` auch noch `|> rotate ...`.

---

([Datei](https://raw.githubusercontent.com/jvoigtlaender/Elm-Kurs/master/src/task_extra/Fraktal.elm), [@share-elm](http://share-elm.com/sprout/558974a3e4b06aacf0e8a766/0.14/view))

