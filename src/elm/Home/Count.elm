module Home.Count exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Home.Hello exposing (hello)
import Home.Msgs exposing (Msg)


view : Int -> Html Msg
view count =
    div [ class "container", style [ ( "margin-top", "30px" ), ( "text-align", "center" ) ] ]
        [ div [ class "row" ]
            [ div [ class "col-xs-12" ]
                [ div [ class "jumbotron" ]
                    [ hello count
                    , createButton Home.Msgs.Increment "Increment"
                    , createButton Home.Msgs.Increment "Decrement"
                    ]
                ]
            ]
        ]


createButton : Msg -> String -> Html Msg
createButton clickMessage label =
    button [ class "btn btn-primary btn-lg", onClick clickMessage ]
        [ span [ class "glyphicon glyphicon-star" ] []
        , span [] [ text label ]
        ]
