module View exposing (view)

import Html exposing (Html)


--local imports

import Routes.Home.View as HomeView
import Types exposing (Route(..), Model, Msg)


view : Model -> Html Msg
view model =
    case model.route of
        Home ->
            HomeView.view

        Week _ ->
            Debug.crash "not ready yet! there is nothing to handle the week view"

        NotFoundRoute ->
            Debug.crash "we do not have a 404 view for now!"
