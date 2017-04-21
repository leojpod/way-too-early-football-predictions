module Types exposing (Route(..), Model, Msg(..), WeekId(..))

import Navigation exposing (Location)


type WeekId
    = RegularWeek Int
    | Wildcard
    | DivisionalRound
    | ConferenceRound
    | SuperBowl


type Route
    = Home
    | Week WeekId
    | NotFoundRoute


type alias Model =
    { route : Route }


type Msg
    = OnLocationChange Location
