module Models exposing (..)


type alias Model =
    { route : Route
    , homeModel : Int
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , homeModel = 0
    }


type alias TaskId =
    String


type Route
    = Home
    | NotFoundRoute
