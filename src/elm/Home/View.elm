module Home.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Home.Components.Hello exposing (hello)
import Home.Msgs exposing (..)
import Home.Models exposing (Model)


view : Model -> Html Msg
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
