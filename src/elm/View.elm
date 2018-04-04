module View exposing (..)

import Html exposing (Html, div, text)
import Models exposing (Model)
import Msgs exposing (Msg)
import Home.View exposing (view)


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        Models.Home ->
            Html.map Msgs.HomeMsg (Home.View.view model.homeModel)

        Models.NotFoundRoute ->
            notFoundView


notFoundView : Html msg
notFoundView =
    div []
        [ text "Not found"
        ]
