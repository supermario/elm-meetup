module Ex3Part3 exposing (..)

import Html exposing (Html, text)
import Task


type FormDetails
    = BothEmpty
    | JustFirst String
    | JustSecond String
    | Both String String


type ValidForm =  ValidForm ...data..

type Msg
    = TypedFirst String
    | TypedSecond String


view formDetails =
    case formDetails of
        Both fName sName ->
            text "Both fields are filled!"

        JustFirst fName ->
            text "We have just firstname"

        JustSecond sName ->
            text "We have just secondName"

        BothEmpty ->
            text "We have no values yet"


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
                            JustSecond newSecond

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
