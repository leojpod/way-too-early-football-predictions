module Routes.Home.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import BulmaClasses exposing (..)


-- local imports

import Routing exposing (toPath)
import Types exposing (Route(..), WeekId(..))


view : Html msg
view =
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
                , a
                    [ class bulma.button.ui
                    , class bulma.button.color.isInfo
                    , class bulma.button.style.isOutlined
                    , href (toPath (Week (RegularWeek 1)))
                    ]
                    [ text "start" ]
                , h2 [ class bulma.heading.subtitle ] [ text "hint: the Hawks are going to the superbowl!" ]
                ]
            ]
        ]
