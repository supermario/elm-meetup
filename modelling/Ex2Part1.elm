module Ex2Part1 exposing (..)

import Html exposing (Html, text)


-- type alias Model = {
--     ...??????....
-- }


type alias Statusx =
    { loading : Bool
    , loaded : Bool
    , failed : Bool
    , error : Maybe String
    , data : Maybe String
    }



-- view statusx =
--     if statusx.loading == True then
--     else
--     else
--     else
--     else
--     else
--     else


type Status err a
    = PreFlight
    | Loading
    | Error err
    | Result a


myresult : Status String String
myresult =
    Result ""


view status =
    case status of
        PreFlight ->
            text "preflight"

        Loading ->
            text "loading"

        Error err ->
            text err

        Result res ->
            text res



-- - init before we've sent aynthing / not have asked
-- - request in flight
-- - error
--     - timeout
--     - error
--     - user cancelled it!
--     - got a result a but it was malformed / unexpected?
-- - got a result
-- -
--


myStatus =
    {}


showStatus s =
    text "..."


main =
    showStatus myStatus
