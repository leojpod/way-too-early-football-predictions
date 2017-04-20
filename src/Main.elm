module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import BulmaClasses exposing (..)


-- local imports

import Routes.Home.View exposing (home)


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


main : Html msg
main =
    home
