module Eye exposing (..)

import Pictures exposing (..)


scene ( x, y ) =
    pupil ( x, y )


pupil ( x, y ) =
    let
        z =
            sqrt (x ^ 2 + y ^ 2)
    in
    empty


main =
    displayWithMouse scene
