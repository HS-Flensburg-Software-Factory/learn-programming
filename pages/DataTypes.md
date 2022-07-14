[Zurück](Block.md)

---

# Zwölfte Aufgabe

Da der Zustand unserer Anwendung aus drei Zahlen besteht, kann nicht so elegant geprüft werden, wie der Block aktuell rotiert ist.
Außerdem vermittelt der Typ `Float` für die Rotation des Blockes, dass der Block in unserer Anwendung um eine beliebige Rotation gedreht sein kann.
In unserer Anwendung gibt es aber nur vier mögliche Rotationen.
Um diese Informationen expliziter in unserer Anwendung auszudrücken, wollen wir einen Datentyp definieren.
Wenn wir in der Funktion `update` getestet haben, welches `Event` eingetreten ist, haben wir einen solchen Datentyp bereits verwendet.
Man kann diese Art von Datentyp aber auch selbst definieren.
Die folgende Definition definiert einen Datentyp, der angibt, wie oft unser Block rotiert ist

```elm
type Rotation
    = None
    | Once
    | Twice
    | ThreeTimes
```

Wir haben in der Funktion `update` bereits ein `case ... of ...` genutzt, um eine Fallunterscheidung über einen Datentyp zu machen.

Definieren Sie als nächstes eine Funktion `turn`, die modelliert, wie sich die Rotation ändert, wenn der Benutzer die Pfeil-Nach-Oben-Taste drückt.
Füllen sie die fehlenden Stellen in der folgenden Implementierung.
```elm
turn : Rotation -> Rotation
turn rot =
    case rot of
        None ->
            ...

        Once ->
            ...

        Twice ->
            ...

        ThreeTimes ->
            ...
```

Um die Rotation jetzt zum Zeichnen unseres Blockes nutzen zu können, müssen wir die `Rotation` noch in eine Radiant-Zahl in Form eines `Float` übersetzen.
Definieren Sie die folgende Funktion.

```elm
toRadiant : Rotation -> Float
toRadiant rot =
    case rot of
        ...
```

Nutzen Sie diese Funktionen in der Datei `Block.elm`, um Ihren Block zu rotieren.

---

[Weiter](End.md)
