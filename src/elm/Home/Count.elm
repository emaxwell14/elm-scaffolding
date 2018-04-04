module Home.Count exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Home.Hello exposing (hello)
import Home.Msgs exposing (..)
import Home.Models exposing (..)


view : Home.Models.Model -> Html Msg
view model =
    div [ class "container", style [ ( "margin-top", "30px" ), ( "text-align", "center" ) ] ]
        [ div [ class "row" ]
            [ div [ class "col-xs-12" ]
                [ div [ class "jumbotron" ]
                    [ hello model.count
                    , createButton Increment "Increment"
                    , createButton Decrement "Decrement"
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
