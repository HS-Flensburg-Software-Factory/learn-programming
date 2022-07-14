module Block exposing (..)

import Pictures exposing (..)


type alias State =
    ( Float, Float )


initial : State
initial =
    ( 0, 0 )


update : Event -> State -> State
update event ( x, y ) =
    case event of
        _ ->
            ( x, y )


scene : State -> Picture
scene ( x, y ) =
    filledSquare blue 20


main =
    displayWithState initial scene update
