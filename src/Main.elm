module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick, onInput, onSubmit)

main =
        Browser.sandbox { init = init, update = update, view = view }

type alias Model = String

init : Model
init =
        "n"

type Msg
        = Increment
        | Decrement


update : Msg -> Model -> Model
update msg model =
        case msg of
                Increment ->
                        String.append model "yo"

                Decrement ->
                        String.dropRight (String.length init) model

view : Model -> Html Msg
view model =
        div []
                [ button [ onClick Decrement ] [ text "sub" ]
                , div [] [ text model ]
                , button [ onClick Increment ] [ text "add" ]
                ]
