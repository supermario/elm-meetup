module Ex3Part3 exposing (..)

import Html exposing (Html, text)
import Task


type FormDetails
    = BothEmpty
    | JustFirst String
    | JustSecond String
    | Both String String


type Msg
    = TypedFirst String
    | TypedSecond String


update msg model =
    case msg of
        TypedFirst newFirst ->
            let
                formDetails_ =
                    case model.formDetails of
                        BothEmpty ->
                            JustFirst newFirst

                        JustFirst fName ->
                            JustFirst newFirst

                        JustSecond sName ->
                            Both newFirst sName

                        Both fName sName ->
                            Both newFirst sName
            in
            { model | formDetails = formDetails_ }

        TypedSecond newSecond ->
            let
                formDetails_ =
                    case model.formDetails of
                        BothEmpty ->
                            JustSecond newSecond

                        JustFirst fName ->
                            Both fName newSecond

                        JustSecond sName ->
                            JustSecond sName

                        Both fName sName ->
                            Both fName newSecond
            in
            { model | formDetails = formDetails_ }


submit formDetails =
    case formDetails of
        Both firstName lastName ->
            submitCmd

        _ ->
            Cmd.none


main =
    text "..."


submitCmd =
    Debug.crash "unimplemented"
