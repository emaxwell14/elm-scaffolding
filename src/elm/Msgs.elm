module Msgs exposing (..)

import Navigation exposing (Location)
import Home.Msgs exposing (..)


type HomeMsg
    = Home


type Msg
    = OnLocationChange Location
    | HomeMsg Home.Msgs.Msg
