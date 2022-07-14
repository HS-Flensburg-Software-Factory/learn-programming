[Zurück](MousePosition.md)

---

# Lokale Variablen

Mit einem sogenannten `let`-Ausdruck können lokale Variable definiert werden.

```elm
pic ( x, y ) i =
    let
        r =
            10 * i
    in
    ... Code, der abhängig von der Mausposition ( x, y ), und dem Radius r ist
```

Das heißt, hinter dem `in` können Sie die Variable `r` verwenden und die Variable enthält das zehnfache des Wertes von `i`.

---

[Zur sechsten Aufgabe](Mouse.md)
