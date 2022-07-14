[Zurück](ColoredCircles.md)

---

# Mausbewegung

Als nächstes wollen wir Bilder erzeugen, die abhängig von der aktuellen Position der Maus sind.
Um eine solche Anwendung zu schreiben, verwenden Sie die Funktion `displayWithMouse` an Stelle von `display`.
Wenn wir diese Funktion nutzen, erhält die Szene nun in `x` und `y` immer die Koordinaten der jeweils aktuellen Mausposition.
Das gezeichnete Bild ist also nicht mehr statisch, sondern kann auf Mausbewegungen reagieren.

```elm
scene ( x, y ) =
    ... Code, der abhängig von der Mausposition ( x, y ) ist


main =
    displayWithMouse scene
```

Das heißt, die Definition `scene` kann jetzt die `x`- und `y`-Koordinate der Mausposition zur Erzeugung eines Bildes nutzen.

---

[Weiter](Let.md)
