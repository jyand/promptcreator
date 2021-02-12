module Main exposing(main)

import Html exposing(..)
import Html.Attributes exposing(..)
import Html.Events exposing(..)
import Html.Keyed
import Json.Decode

main : Program () Model Msg
main = Browser.sandbox { init = init, view = view, update = update }
