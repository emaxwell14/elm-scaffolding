module Models exposing (..)


type alias Model =
    { route : Route
    , count : Int
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , count = 0
    }


type alias TaskId =
    String


type Route
    = Home
    | NotFoundRoute
