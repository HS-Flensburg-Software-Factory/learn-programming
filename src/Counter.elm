module Counter exposing (..)

import Pictures exposing (..)


initial =
    0


update event state =
    case event of
        Click ->
            state + 1

        _ ->
            state


scene state =
    circle state


main =
    displayWithState initial scene update
