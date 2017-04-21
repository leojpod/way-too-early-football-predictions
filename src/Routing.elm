module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)
import Types exposing (Route(..), WeekId(..))


weekMatchers : Parser (WeekId -> a) a
weekMatchers =
    oneOf
        [ map RegularWeek (int)
        , map Wildcard (s "wildcard-round")
        , map DivisionalRound (s "divisional-round")
        , map ConferenceRound (s "conference-round")
        , map SuperBowl (s "superbowl")
        ]


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Home top
        , map Week (s "week" </> weekMatchers)
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute


toPath : Route -> String
toPath route =
    case route of
        NotFoundRoute ->
            "#404"

        Home ->
            ""

        Week week ->
            case week of
                RegularWeek i ->
                    "#week/" ++ (toString i)

                Wildcard ->
                    "#week/wildcard-round"

                DivisionalRound ->
                    "#week/divisional-round"

                ConferenceRound ->
                    "#week/conference-round"

                SuperBowl ->
                    "#week/superbowl"
