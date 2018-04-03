module Main exposing (..)

import Models exposing (Model, initialModel, Route)
import Msgs exposing (Msg)
import View exposing (view)
import Update exposing (update)
import Navigation exposing (Location)
import Routing


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
