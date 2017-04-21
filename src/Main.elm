module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import BulmaClasses exposing (..)
import Navigation


-- local imports

import Types exposing (Model, Msg(..))
import State exposing (init, update, subscriptions)
import View exposing (view)


menu : Html msg
menu =
    nav [ class bulma.nav.container ]
        [ div [ class bulma.nav.left ]
            [ a [ class bulma.nav.item.container ] [ text "Season predictor" ]
            ]
        , div [ class bulma.nav.center ]
            [ a [ class bulma.nav.item.container ]
                [ span [ class bulma.icon.container ]
                    [ i [ class "fa fa-twitter" ] []
                    ]
                ]
            , a [ class bulma.nav.item.container ]
                [ span [ class bulma.icon.container ]
                    [ i [ class "fa fa-github" ] []
                    ]
                ]
            ]
        , span [ class bulma.nav.toggle ]
            [ span [] []
            , span [] []
            , span [] []
            ]
        ]


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
