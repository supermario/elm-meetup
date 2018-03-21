module Ex8Part1 exposing (..)

import Html exposing (Html, text)


type Page
    = Page1
    | Page2
    | Page3


type alias Model =
    { currentPage : Page
    , currentPageOpening : Bool
    , parents : List Page
    }


openNewChild : Page -> Model -> Model
openNewChild =
    Debug.crash "unimplemented"


closeChild : Model -> Model
closeChild =
    Debug.crash "unimplemented"


main =
    text "..."
