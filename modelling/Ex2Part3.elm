module Ex2Part3 exposing (..)

import Html exposing (Html, text)


type Status a
    = Loading
    | Failed
    | Loaded a


myStatus =
    Loading


showStatus s =
    case s of
        Loading ->
            text "Loading..."

        Loaded a ->
            text ("Loaded: " ++ a)

        Failed ->
            text "Oh no! Something wrong wrong!"


main =
    showStatus myStatus
