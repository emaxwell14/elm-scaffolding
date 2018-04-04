module Update exposing (..)

import Routing exposing (parseLocation)
import Msgs exposing (..)
import Home.Update exposing (update)
import Models exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        HomeMsg subMsg ->
            let
                ( updatedModel, homeCmd ) =
                    Home.Update.update subMsg model.homeModel
            in
                ( { model | homeModel = updatedModel }, Cmd.map HomeMsg homeCmd )
