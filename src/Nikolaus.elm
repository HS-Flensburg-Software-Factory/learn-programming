module Nikolaus exposing (..)

import Pictures exposing (..)


scene =
    group [ cross, rectangle ( 100, 130 ) ]


cross =
    segment ( -50, -65 ) ( 50, 65 )


main =
    display scene
