module Update exposing (..)

import Routing exposing (parseLocation)
import Msgs exposing (..)


update msg model =
    case msg of
        Msgs.OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        Msgs.Increment ->
            ( { model | count = model.count + 1 }, Cmd.none )

        Msgs.Decrement ->
            ( { model | count = model.count - 1 }, Cmd.none )
