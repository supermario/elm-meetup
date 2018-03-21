module Ex2Part2 exposing (..)

import Html exposing (Html, text)


type Status a
    = Loading
    | Loaded
    | Failed


myStatus =
    {}


showStatus s =
    text "..."


main =
    showStatus myStatus
