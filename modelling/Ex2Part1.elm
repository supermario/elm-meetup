module Ex2Part1 exposing (..)

import Html exposing (Html, text)


type alias Status =
    { loading : Bool
    , loaded : Bool
    , failed : Bool
    }


myStatus =
    {}


showStatus s =
    text "..."


main =
    showStatus myStatus
