# Erste Aufgabe

[Haus des Nikolaus](Nikolaus.md)

Dann Erkl�rungen zu:

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

Mache aus dem einen Haus des Nikolaus drei nebeneinander stehende H�user des Nikolaus.

Erkl�rungen:

* Benennung von Ausdr�cken (f�r Wiederverwendung)
* Zusammenfassen von Listen in einzelnes Bild (um etwa als Eingabe f�r `move` zu dienen):
```elm
group : List Form -> Form
```
