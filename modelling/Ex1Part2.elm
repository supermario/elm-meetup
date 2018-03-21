module Ex1Part2 exposing (..)

import Html exposing (Html, text)


type Mood
    = Happy
    | Sad


myMood =
    Happy


showMood mood =
    case mood of
        Happy ->
            text "You are happy! :)"

        Sad ->
            text "You are sad! :("


main =
    showMood myMood
