[Zur�ck](Mario.md)

---

# Zehnte Aufgabe

Jetzt wollen wir [dies](http://jvoigtlaender.github.io/Elm-Kurs/examples/Stamping.html) umsetzen. (Bewege die Maus und klicke zwischendurch ein paar Mal.)

Als Zustand bietet sich eine Liste von schon "angesammelten" Stempel-Teilbildern an. Listen hatten wir bisher als direkte Argumente f�r `path` und `group`. Sie lassen sich aber auch unabh�ngig davon anlegen und verwenden.

Ver�ndere die `update`-Funktion in folgendem Programm (`Stamping.elm`):

```elm
type alias State = List Picture

initial : State
initial = []

update : Event -> (Float,Float) -> Float -> State -> State
update event (x,y) _ list = list

scene : (Float,Float) -> Float -> State -> Picture
scene (x,y) _ list =
  group
  (list ++ [ ngon' red 5 15 |> move (x,y) ])

main = displayWithState (-200,-150) (200,150) scene initial update Nothing
```

so dass das gew�nschte Verhalten entsteht.

Hinweise:

* `[]` steht f�r eine leere Liste, wohingegen `++` die Erweiterung einer Liste (oder allgemein das Aneinanderh�ngen zweier Listen) erm�glicht.

* In `update` und `scene` kann, und hier sollte, �ber das entsprechende Argument auf die aktuelle Mausposition zugegriffen werden. (Den aktuellen Zeitwert ignorieren wir vorerst weiterhin.)

* Um auf Mausklicks zu reagieren, existiert der Ereignisname `Click`.

* Mittels `ngon`/`ngon'` werden (ausgef�llte) Fl�chen von regelm��igen Polygonen mit gegebener Eckenzahl und Umkreisradius beschrieben.

Zusatz: Erweitere nun das Programm, so dass nach jedem Klick der "Stempel" etwas gr��er wird (und in der Folge danach auch entsprechend gr��ere Abdr�cke hinterl�sst).

---

[Weiter](Ballistics.md)

---

([Datei](https://raw.githubusercontent.com/jvoigtlaender/Elm-Kurs/master/src/task10/Stamping.elm), [@share-elm](http://share-elm.com/sprout/558972c2e4b06aacf0e8a763/0.14/view))

