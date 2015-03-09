[Zur�ck](Re-Use.md)

---

# Dritte Aufgabe

Male ein gleichseitiges, gr�nes Dreieck mit einbeschriebenem, rot gestricheltem Ber�hrkreis, so dass dieser den Radius 25 hat.  

* Hinweis zum Styling:  
  Von den Funktionen `rectangle`, `square`, `circle`, `oval`, `path` gibt es Varianten, die uns das Aussehen der gezeichneten Linien ver�ndern lassen.
  W�hrend zum Beispiel `rectangle' (solid black) (30,20)` �quivalent zum schon gesehenen `rectangle (30,20)` ist, geht auch `rectangle' (dashed red) (30,20)`:  
  ![rectangle'](../images/rectangle'.png)  
  oder auch etwa `oval' (dotted blue) (30,20)`:  
  ![oval'](../images/oval'.png)  
  Eine �bersicht vorhandener Farben und M�glichkeiten zur Erzeugung neuer findet man bei Bedarf [hier](http://package.elm-lang.org/packages/elm-lang/core/latest/Color).

* Geometrischer Hinweis:  
  Die Beziehung zwischen Seitenl�nge `a` und Inkreisradius `r` in einem gleichseitigen Dreieck betr�gt `r = a/sqrt(12)`. Au�erdem gilt f�r die H�he des Dreiecks `h = 3*r`.

Zielbild:

![Inkreis](../images/Inkreis.png)

Dann: Schreibe und verwende eine Funktion, welche diese Aufgabe nicht nur f�r Radius 25 l�st.  

---

Beispielausdr�cke zur Erinnerung:

* `circle 10`
* `path [ (0,0), (15,15), (30,-15), (40,5) ]`

---

[Weiter](Kreise.md)

