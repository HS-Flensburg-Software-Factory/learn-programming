module Squares exposing (..)

import Pictures exposing (..)


pic i =
    square (10 * i)


scene =
    group []


main =
    display scene
