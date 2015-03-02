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
* Zusammenfassen von Bildern in einzelnes Bild (um etwa als Eingabe f�r `move` zu dienen):

  ```elm
  group : List Form -> Form
  ```

# Weitere Aufgaben

* Male ein gleichseitiges, gr�nes Dreieck mit einbeschriebenem, rot gestricheltem Inkreis, so dass dieser den Radius 25 hat.  
  Erkl�rungen:
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
* Schreibe und verwende eine Funktion (zu erkl�ren), welche die vorige Aufgabe nicht nur f�r Radius 25 l�st.

