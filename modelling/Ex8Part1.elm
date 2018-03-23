module Ex8Part1 exposing (..)

import Html exposing (Html, text)


type Page
    = Page1
    | Page2
    | Page3


type alias Model =
    { currentPage : Page
    , currentPageOpening : Page
    , allParents : List Page
    }



-- { currentPage = Page1
-- , currentPageOpening : Page1
-- , allParents : [Page2]
-- }
--
--
-- type AnimStatus a = SlidingIn a | SlidingOut a
--
-- { pages : NonEmptyList (AnimStatus Page)
-- }
--     - sliding page (the one that's opening)
--     - current page
--     - all the other pages
--


type PageState a
    = Opened a
    | Closing a (PageState a)
    | Opening a (PageState a)


myps =
    Opened Page1


myps2 =
    Opening Page2 myps


myps3 =
    Closing Page3 (Opening Page2 (Opened Page1))



    Opening Page4 (Opening Page3 (Closing Page2 (Opened Page1)))



type X
    = PageWithHistory Page (List Page)
    = PageWithHistory Page (List Page)
    | ReturnedToPage Page Page (List Page)



{
    pageState : NonEmptyList Page
    closing : Maybe Page
}



-- - default opened page
-- - opening a new page
-- - closing a page
-- - displaying more than one page


openNewChild : Page -> Model -> Model
openNewChild =
    Debug.crash "unimplemented"


closeChild : Model -> Model
closeChild s =
    case s of
         Opened Page
         Closing page pageState  ->
             closeChild pageState

         Opening Page PageState



main =
    text "..."
