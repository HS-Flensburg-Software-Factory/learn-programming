module Eyes exposing (..)

import Pictures exposing (..)


scene ( x, y ) =
    pupil ( 45, 50 ) ( x, y )


pupil ( cx, cy ) ( x, y ) =
    let
        dx =
            x - cx

        dy =
            y - cy

        dz =
            sqrt (dx ^ 2 + dy ^ 2)
    in
    empty


main =
    displayWithMouse scene
