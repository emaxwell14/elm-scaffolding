module Models exposing (..)

import Home.Models exposing (..)


type alias Model =
    { route : Route
    , homeModel : Home.Models.Model
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , homeModel = Home.Models.initialModel
    }


type Route
    = Home
    | NotFoundRoute
