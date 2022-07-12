[Zurück](../README.md)

---

# Erste Aufgabe

Vervollständigen Sie die Datei `Nikolaus.elm` im Ordner `src` so, dass das Haus des Nikolaus gezeichnet wird.
Die Datei enthält den folgenden Code.

```elm
scene =
    group [ cross, rectangle ( 100, 130 ) ]


cross =
    segment ( -50, -65 ) ( 50, 65 )


main =
    display scene
```

Das Ergebnis soll etwa wie folgt aussehen.

![Haus des Nikolaus](../images/Nikolaus.png)

Um den Code, der schon existiert, auszuprobieren, können Sie im Terminal `elm reactor` eingeben.
Öffnen Sie anschließend in einem Web-Browser die Seite `http://localhost:8000`.
Der Browser zeigt Ihnen nun die Verzeichnisstruktur dieses Projektes an.
Wählen Sie den Ordner `src` und anschließend die Datei `Nikolaus.elm`.
Nun sollten Sie sehen können, was die aktuelle Version der Datei `Nikolaus.elm` zeichnet.
Wenn Sie an der Datei `Nikolaus.elm` etwas geändert haben, können Sie einfach im Browser "Neu laden" wählen und der Browser zeigt, was die neue Implementierung zeichnet.
