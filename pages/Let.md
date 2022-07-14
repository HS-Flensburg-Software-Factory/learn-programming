[Zurück](Follow.md)

---

# Lokale Variablen

Mit einem sogenannten `let`-Ausdruck können lokale Variable definiert werden.

```elm
pupil ( x, y ) =
    let
        z =
            sqrt (x ^ 2 + y ^ 2)
    in
    ... Code, der abhängig von der Mausposition ( x, y ), und der Hypotenuse z ist
```

Das heißt, hinter dem `in` können Sie die Variable `z` verwenden und die Variable enthält die Wurzel der Quadrate der Werte von `x` und `y`.

---

[Zur achten Aufgabe](Eye.md)
