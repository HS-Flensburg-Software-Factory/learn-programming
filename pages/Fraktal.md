[Zur�ck](Kreativ.md)

---

# Zusatzaufgabe

Vervollst�ndige folgendes Programm:

```elm
scene _ _ =
  group
  [ sierpinski 4 ]

sierpinski i = 
  if i>0
    then
      let 
        s = group
            [ sierpinski (i-1) ]
            |> scale 0.5
      in
        ...
    else
      ngon 3 120

main = display (400,300) scene Nothing
```

so dass `sierpinski i` jeweils die `i`. Stufe des [Sierpinski-Dreiecks](http://de.wikipedia.org/wiki/Sierpinski-Dreieck) darstellt, wobei der Umkreisradius des Gesamtdreiecks gleich `120` sein soll.

[share-elm](http://share-elm.com/sprout/550b0051e4b0d720e25d6465)

Hinweise:

* Der Ausdruck `ngon 3 120` beschreibt die Fl�che eines regelm��igen `3`-Ecks mit Umkreisradius `120`.

* Analog zu `|> move ...` wirkt `|> scale ...` auf ein beliebiges Teilbild, verschiebt dieses jedoch nicht, sondern streckt/staucht es.

* Die Beziehung zwischen Seitenl�nge `a` und Umkreisradius `r` in einem gleichseitigen Dreieck betr�gt `a = r * sqrt(3)`. Au�erdem gilt, dass der Inkreisradius halb so gro� wie der Umkreisradius ist.

Zielbild, f�r `i = 4`:

![Sierpinski-Dreieck](../images/Sierpinski.png)

