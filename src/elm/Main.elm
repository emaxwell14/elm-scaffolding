module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onClick )

import Components.Hello exposing ( hello )


-- APP
main : Program Never Model Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL
type alias Model = Int

model : Model
model = 0


-- UPDATE
type Msg = NoOp | Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> model + 1
    Decrement -> model - 1


-- VIEW
view : Model -> Html Msg
view model =
  div [ class "container", style [("margin-top", "30px"), ( "text-align", "center" )] ][
    div [ class "row" ][
      div [ class "col-xs-12" ][
        div [ class "jumbotron" ][
          hello model
          , createButton Increment "Increment"
          , createButton Decrement "Decrement"
        ]
      ]
    ]
  ]

createButton: Msg -> String -> Html Msg
createButton clickMessage label =
    button [ class "btn btn-primary btn-lg", onClick clickMessage ]
    [
      span[ class "glyphicon glyphicon-star" ][]
      , span[][ text label ]
    ]
