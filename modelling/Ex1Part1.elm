module Ex1Part1 exposing (..)

import Html exposing (Html, text)


type Bool
    = True
    | False


type Mood
    = Happy
    | Sad


isHappy : Bool
isHappy =
    True



-- showMood : Bool -> Html msg


foo =
    showMood (1 > 2)



-- showMood2 : Mood -> Html msg


showMood isHappy =
    iff isHappy
        (text "You are happy! :)")
        (text "You are sad! :(")


iff : Booly -> a -> a -> a
iff bool one other =
    case bool of
        Maaaaate ->
            other

        Falsey ->
            other

        Truey ->
            one


main =
    showMood isHappy
