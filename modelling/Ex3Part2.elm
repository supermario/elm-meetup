module Ex3Part2 exposing (..)

import Html exposing (Html, text)
import Task


type alias FormDetails =
    { firstName : String
    , lastName : String
    }


type Msg
    = TypedFirst String
    | TypedSecond String


view formDetails =
    if formDetails.firstName /= "" && formDetails.secondName /= "" then
        text "Both fields are filled!"
    else if formDetails.firstName /= "" then
        text "We have just firstname"
    else if formDetails.secondName /= "" then
        text "We have just secondName"
    else
        text "We have no values yet"


update msg model =
    case msg of
        TypedFirst newFirst ->
            let
                formDetails =
                    model.formDetails

                formDetails_ =
                    { formDetails | firstName = newFirst }
            in
            { model | formDetails = formDetails_ }

        TypedSecond newSecond ->
            let
                formDetails =
                    model.formDetails

                formDetails_ =
                    { formDetails | secondName = newSecond }
            in
            { model | formDetails = formDetails_ }


submit formDetails =
    if formDetails.firstName /= "" && formDetails.secondName /= "" then
        submitCmd
    else
        Cmd.none


main =
    text "..."


submitCmd =
    Debug.crash "unimplemented"
