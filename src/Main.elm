module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick, onInput, onSubmit)

import Array

import Special as Sp

main =
        Browser.sandbox { init = init, update = update, view = view }

type alias Model = String

init : Model
init =
        "yo"

um = Array.get 0 (Array.fromList Sp.utfChars) 
ul = Array.get 1 (Array.fromList Sp.utfChars) 

type Msg
        = IncrementMu
        | IncrementLambda
        | Decrement
        | Clear


update : Msg -> Model -> Model
update msg model =
        case msg of
                IncrementMu ->
                        String.append model (Maybe.withDefault init um)
                IncrementLambda ->
                        String.append model (Maybe.withDefault init ul)

                Decrement ->
                        String.dropRight 1 model
                Clear ->
                        String.dropLeft (String.length model) model

view : Model -> Html Msg
view model =
        div []
                [ button [ onClick Clear ] [ text "clear" ]
                ,button [ onClick Decrement ] [ text "delete" ]
                , div [] [ text model ]
                , button [ onClick IncrementMu ] [ text (Maybe.withDefault init um) ]
                , button [ onClick IncrementLambda ] [ text (Maybe.withDefault init ul) ]
                ]
