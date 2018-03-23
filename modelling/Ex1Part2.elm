module Ex1Part2 exposing (..)

import Html exposing (Html, text)


type Mood
    = Happy
    | Sad
    | Melancholy


myMood =
    Happy


showMood mood =
    case mood of
        Happy ->
            text "You are happy! :)"

        Sad ->
            text "You are sad! :("

        Melancholy ->
            text "Melancholy.... whatever"


main =
    showMood myMood
