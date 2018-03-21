module Ex3Part1 exposing (..)

import Html exposing (Html, text)


type alias FormDetails =
    { firstName : String
    , lastName : String
    }


submit : FormDetails -> Cmd msg
submit =
    Debug.crash "unimplemented"


main =
    text "..."
