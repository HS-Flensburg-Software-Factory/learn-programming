[Zurück](Follow.md)

---

# Achte Aufgabe

In dieser Aufgabe sollen Sie ein Auge zeichnen, dessen Pupille der Maus folgt.
Das heißt, das Auge soll immer an der gleichen Stelle stehen, die Pupille soll aber in Richtung der Maus schauen.
Zeichnen Sie zuerst einen Kreis in der Mitte der Zeichenfläche, der das Auge darstellt.
Wenn sich die Pupille innerhalb des Auges befindet, soll die Pupille dort gezeichnet werden, wo der Mauszeiger ist.
Um zu prüfen, ob sich der Mauszeiger innerhalb des Auges befindet, können Sie mit Hilfe des Satzes von Pythagoras berechnen, wie weit die direkte Strecke vom Mauszeiger zum Mittelpunkt des Bildes ist.
Wenn diese direkte Strecke kleiner ist als der Radius des Auges, befinden sich der Mauszeiger innerhalb des Auges.
Um zu prüfen, ob die Pupille innerhalb des Auges ist, müssen Sie noch den Radius der Pupille berücksichtigen.

Wenn der Mauszeiger sich zu weit von der Mitte entfernt hat, soll die Pupille am Rand des Auges gezeichnet werden.
Um die Position der Pupille zu bestimmen, benötigen Sie ebenfalls die direkte Entfernung des Mauszeigers von der Mitte des Auges.
Sie können den ersten Strahlensatz nutzen, um die Position der Pupille zu berechnen.
Erweitern Sie die Datei `Eye.elm` so, dass das gewünschte Verhalten gezeichnet wird.

---

[Zur neunten Aufgabe](Eyes.md)
