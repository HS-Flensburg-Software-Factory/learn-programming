# Start

http://tinyurl.com/Elm-Kurs

# Erste Aufgabe

[Haus des Nikolaus](pages/Nikolaus.md)

Dann Erkl�rungen zu (neben Listensyntax):

```elm
rectangle : (Float,Float) -> Picture
square : Float -> Picture
circle : Float -> Picture
oval : (Float,Float) -> Picture
text : String -> Picture
```

Obige jeweils zentriert um Ursprung.

Anders (absolute Koordinaten) bei:

```elm
path : List (Float,Float) -> Picture
```

F�r Zusatz (und bei weiteren Aufgaben) n�tzlich:

```elm
move : (Float,Float) -> Picture -> Picture
```

# Zweite Aufgabe

[Drei H�user des Nikolaus](pages/Re-Use.md)

Erkl�rungen:

* Benennung von Ausdr�cken (f�r Wiederverwendung)
* Eventuell Zusammenfassen von Bildern in einzelnes Bild (um etwa als Eingabe f�r `move` zu dienen):

  ```elm
  group : List Picture -> Picture
  ```

# Dritte Aufgabe

[Farbige Kreise](pages/Kreise.md)

Erkl�rungen dabei:

* Styling:

  ```elm
  rectangle' : LineStyle -> (Float,Float) -> Picture
  square' : LineStyle -> Float -> Picture
  circle' : LineStyle -> Float -> Picture
  oval' : LineStyle -> (Float,Float) -> Picture
  path' : LineStyle -> List (Float,Float) -> Picture
  
  solid : Color -> LineStyle
  dashed : Color -> LineStyle
  dotted : Color -> LineStyle
  ```

* arithmetische Ausdr�cke

* Funktionen

* `if ... then ... else ...`

# Vierte Aufgabe

[Reagieren auf Mausbewegungen](pages/Maus.md)

Erkl�rung dabei: Ausdruck der Abh�ngigkeit von Mauskoordinaten

# F�nfte Aufgabe

[Zeitabh�ngiges Verhalten](pages/Pendulum.md)

Erkl�rung dabei: Ausdruck der Abh�ngigkeit von Zeitparameter

# Sechste Aufgabe

[Wieder zeitabh�ngiges Verhalten](pages/Bouncing.md)

# Siebte Aufgabe

[Freies Spiel der Kr�fte](pages/Kreativ.md)

# Achte Aufgabe

[Zustandsverhalten](pages/Counter.md)

# Neunte Aufgabe

[Zustandsmodellierung](pages/Mario.md)

# Zusatzaufgabe

[Rekursion f�r das Sierpinski-Dreieck](pages/Fraktal.md)

# Weggelassene Aufgabe

[Inkreis](pages/Inkreis.md)

# Bewusst ignorierte Dinge

* (vielleicht beil�ufig erw�hnen:) `filled`, `textured`, `gradient`
* `polygon`, `alpha`
* Text alignments and styles
* Styling and inspection of `Element`s (`width`, `height`, `size`, `color`, `opacity`, `widthOf`, `heightOf`, `sizeOf`)
* `Element` stuff: `container`, `spacer`, `flow`, `layers`, `above`, ...
* `link`, `tag`
* `croppedImage`, `fittedImage`, `tiledImage`

