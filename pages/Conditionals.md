[Zurück](Squares.md)

---

# Konditionale

Durch die Verwendung der Funktion `pic` können wir jetzt statt der zehn Quadrate sehr einfach zehn Kreise zeichnen.
Wir müssen in der Definition der Funktion `pic` nur einen Aufruf von `square` durch einen Aufruf von `circle` ersetzen.
Wir möchten die inneren Kreise jetzt aber gern wieder anders färben als die äußeren.
Zu diesem Zweck können wir ein Konditional verwenden.
Der folgende Ausdruck

```elm
if i == 1 then
    square 20

else
    circle 20
```

liefert zum Beispiel ein Quadrat, wenn `i` den Wert `1` hat und einen Kreis andernfalls.
Neben dem Test auf Gleichheit `==` kann man auch testen, ob eine Zahl kleiner `<`, größer `>`, kleiner gleich `<=` oder größer gleich `>=` ist.

---

[Zur fünften Aufgabe](ColoredCircles.md)
