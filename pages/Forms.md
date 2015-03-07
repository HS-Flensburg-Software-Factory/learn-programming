[Zur�ck](Nikolaus.md)

---

# Zum Zeichnen geometrischer Formen

Wir haben schon einige Ausdrucksm�glichkeiten gesehen.
Ein allgemeinerer �berblick mit Beispielen:

* `rectangle (30,20)`  
  ![rectangle](../images/rectangle.png)
* `square 10`
* `circle 10`
* `oval (10,20)`
* `path [ (0,0), (15,-15), (30,15) ]`
* `text "Hallo"`

Da au�er bei (absolut positioniertem) `path` die Formen zun�chst immer um den Koordinatenursprung `(0,0)` zentriert sind, ist `move` n�tzlich.
Zum Beispiel:

```elm
scene _ _ =
   [ rectangle (10,20)
   , move (30,10) (circle 10)
   ]
```

