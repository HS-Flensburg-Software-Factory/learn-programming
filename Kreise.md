Vervollst�ndige, um 10 konzentrische Kreise zu malen, von denen die inneren f�nf rot, die �u�eren f�nf gr�n sind:

```elm
import List

scene _ _ =
  List.map ithCircle [ 1 .. 10 ]

ithCircle i = ...

main = show scene Nothing
```

Zielbild, etwa:

![Farbige Kreise](images/Kreise.png)
