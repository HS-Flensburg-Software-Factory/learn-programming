[Zurück](ComplexState.md)

---

# Elfte Aufgabe

Erweitern Sie das Programm `Block.elm` so, dass Sie das Quadrat mit den Pfeiltasten nach links und rechts bewegen können.
Bei jedem Schritt soll der Block dabei um `20` Pixel bewegt werden.
Ersetzen Sie das Quadrat außerdem durch einen Block mit dem folgenden Aussehen.

![Block]((../images/block.png)

Als nächstes sollen Sie den gezeichneten Block mit Hilfe der Pfeil-Nach-Oben-Taste drehen.
Das Event für die Pfeil-Nach-Oben-Taste lautet `Up`.
Ein Teilbild kann mit Hilfe von `image |> rotate rad` um seinen Mittelpunkt rotiert werden, wobei `rad` ein Winkel in Radiant ist.
Überlegen Sie sich, wie sie die Transformation definieren müssen, damit der Block um seinen Mittelpunkt rotiert wird.

Um den Block zu drehen, benötigen wir einen Zustand, der zusätzliche Informationen enthält.
Genauer gesagt, müssen Sie wissen, um wie viel Grad Ihr Block aktuell gedreht ist.
Erweitern Sie das Paar zu einem Tripel.
Die dritte Komponente gibt an, um wie viel Grad der Block gedreht ist.
Überlegen Sie sich, wie die Gradzahl geändert werden muss, wenn die Leertaste gedrückt wird.

---

[Zur zwölften Aufgabe](Tetris.md)
