[Zur�ck](Nikolaus.md)

---

# Zum Zeichnen geometrischer Formen

Wir haben schon einige Ausdrucksm�glichkeiten gesehen.
Ein allgemeinerer �berblick mit Beispielen:

* `rectangle (30,20)`  
  F�hrt zu:  
  ![rectangle](../images/rectangle.png)

* `square 20`  
  F�hrt zu:  
  ![square](../images/square.png)

* `circle 10`  
  F�hrt zu:  
  ![circle](../images/circle.png)

* `oval (30,20)`  
  F�hrt zu:  
  ![oval](../images/oval.png)

* `path [ (0,0), (15,15), (30,-15), (40,5) ]`  
  F�hrt zu:  
  ![path](../images/path.png)

* `text "Hallo"`  
  F�hrt zu:  
  ![text](../images/text.png)

Da au�er bei (absolut positioniertem) `path` die Formen zun�chst immer um den Koordinatenursprung `(0,0)` zentriert sind, ist `move` n�tzlich.
Zum Beispiel:

```elm
scene _ _ =
   [ rectangle (30,20)
   , move (30,10) (circle 10)
   ]
```

F�hrt zu:  
![move](../images/move.png)

