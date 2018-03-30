module Components.Hello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

-- hello component
hello : Int -> Html a
hello model =
  div
    []
    [
        div [ class "h1" ]
        [
            text ( "Hello Elm" )
        ],
        div []
        [
            text ( "Count: " ++ ( toString model ) )
        ]
    ]
