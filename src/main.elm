module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick, onInput, onSubmit)

main =
        Browser.sandbox { init = init, update = update, view = view }

type alias Model = String

init : Model
init =
        "INSERT"

type Msg
        = Increment
        | Decrement


update : Msg -> Model -> Model
update msg model =
        case msg of
                Increment ->
                        String.append model msg

                Decrement ->
                        String.dropRight String.length msg model

view : Model -> Html Msg
view model =
        div []
                [ button [ onClick Decrement ] [ text "sub" ]
                , div [] [ text model ]
                , button [ onClick Increment ] [ text "add" ]
                ]
