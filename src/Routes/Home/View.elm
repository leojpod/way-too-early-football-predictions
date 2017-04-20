module Routes.Home.View exposing (home)

import Html exposing (..)
import Html.Attributes exposing (..)
import BulmaClasses exposing (..)


home : Html msg
home =
    section
        [ class bulma.hero.container
        , class bulma.hero.style.isBold
        , class bulma.hero.color.isPrimary
        , class bulma.hero.size.isFullheight
        ]
        [ div [ class bulma.hero.head ] []
        , div [ class bulma.hero.body ]
            [ div [ class bulma.feature.container, class bulma.properties.alignment.hasTextCentered ]
                [ h1 [ class bulma.heading.title ] [ text "Simulate the entire football season!" ]
                , button [ class bulma.button.ui, class bulma.button.style.isOutlined ] [ text "start" ]
                , h2 [ class bulma.heading.subtitle ] [ text "hint: the Hawks are going to the superbowl!" ]
                ]
            ]
        ]
