# Erste Aufgabe

[Haus des Nikolaus](pages/Nikolaus.md)

Dann Erkl�rungen zu (neben Listensyntax):

```elm
rectangle : (Float,Float) -> Form
square : Float -> Form
circle : Float -> Form
oval : (Float,Float) -> Form
text : String -> Form
```

Obige jeweils zentriert um Ursprung.

Anders (absolute Koordinaten) bei:

```elm
path : List (Float,Float) -> Form
```

F�r Zusatz (und bei weiteren Aufgaben) n�tzlich:

```elm
move : (Float,Float) -> Form -> Form
```

# Zweite Aufgabe

[Drei H�user des Nikolaus](pages/Reuse.md)

Erkl�rungen:

* Benennung von Ausdr�cken (f�r Wiederverwendung)
* Zusammenfassen von Bildern in einzelnes Bild (um etwa als Eingabe f�r `move` zu dienen):

  ```elm
  group : List Form -> Form
  ```

# Dritte Aufgabe

[Inkreis](pages/Inkreis.md)

Erkl�rungen dabei:

* Styling:

  ```elm
  rectangle' : LineStyle -> (Float,Float) -> Form
  square' : LineStyle -> Float -> Form
  circle' : LineStyle -> Float -> Form
  oval' : LineStyle -> (Float,Float) -> Form
  path' : LineStyle -> List (Float,Float) -> Form
  
  solid : Color -> LineStyle
  dashed : Color -> LineStyle
  dotted : Color -> LineStyle
  ```

* arithmetische Ausdr�cke

* Funktionen

* Erst hinterher, Erw�hnung von `scale : Float -> Form -> Form`, und bei der Gelegenheit auch von `rotate : Float -> Form -> Form`.

# Vierte Aufgabe

[Farbige Kreise](pages/Kreise.md)  

Erkl�rung dabei: `if - then - else -`

# F�nfte Aufgabe

[Reagieren auf Mausbewegungen](pages/Maus.md)  

Erkl�rung dabei: Ausdruck der Abh�ngigkeit von Mauskoordinaten

# Sechste Aufgabe

[Zeitabh�ngiges Verhalten](Bouncing.md)  

Erkl�rungen dabei:

* Ausdruck der Abh�ngigkeit von Zeitparameter

* `Just (Every 20)`, `Just (FPS 50)`, ...

# Weitere Aufgaben

* ...

# Bewusst ignorierte Dinge

* (vielleicht beil�ufig erw�hnen:) `filled`, `textured`, `gradient`
* `polygon`, `ngon`, `alpha`
* Text alignments and styles
* Styling and inspection of `Element`s (`width`, `height`, `size`, `color`, `opacity`, `widthOf`, `heightOf`, `sizeOf`)
* `Element` stuff: `container`, `spacer`, `empty`, `flow`, `layers`, `above`, ...
* `link`, `tag`
* `croppedImage`, `fittedImage`, `tiledImage`

