module Ex3Part2 exposing (..)

import Html exposing (Html, text)
import Task


type alias FormDetails =
    { firstName : String
    , lastName : String
    }


view formDetails =
    if formDetails.firstName /= "" && formDetails.secondName /= "" then
        text "Both fields are filled!"
    else if formDetails.firstName /= "" then
        text "We have just firstname"
    else if formDetails.secondName /= "" then
        text "We have just secondName"
    else
        text "We have no values yet"


submit formDetails =
    if formDetails.firstName /= "" && formDetails.secondName /= "" then
        submitCmd
    else
        Cmd.none


main =
    text "..."


submitCmd =
    Debug.crash "unimplemented"
