module View exposing (..)

import Html exposing (Html, div, text)
import Models exposing (Model)
import Msgs exposing (Msg)
import Home


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        Models.Home ->
            Home.view model.count

        Models.NotFoundRoute ->
            notFoundView


notFoundView : Html msg
notFoundView =
    div []
        [ text "Not found"
        ]
