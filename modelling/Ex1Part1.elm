module Ex1Part1 exposing (..)

import Html exposing (Html, text)


isHappy =
    True


showMood isHappy =
    if isHappy then
        text "You are happy! :)"
    else
        text "You are sad! :("


main =
    showMood isHappy
