module State exposing (init, update, subscriptions)

import Navigation exposing (Location)


-- local imports

import Routing exposing (parseLocation)
import Types exposing (Msg(..), Model)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        route =
            parseLocation location
    in
        ( { route = route }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        OnLocationChange location ->
            let
                route =
                    parseLocation location
            in
                ( { model | route = route }, Cmd.none )
