module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import BulmaClasses exposing (..)


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



{--
<section class="hero is-primary is-bold is-fullheight is-medium">
  <!-- Hero header: will stick at the top -->
  <div class="hero-head">
    <header class="nav">
      <div class="container">
        <div class="nav-left">
          <a class="nav-item">
            <img src="images/bulma-type-white.png" alt="Logo">
          </a>
        </div>
        <span class="nav-toggle">
          <span></span>
          <span></span>
          <span></span>
        </span>
        <div class="nav-right nav-menu">
          <a class="nav-item is-active">
            Home
          </a>
          <a class="nav-item">
            Examples
          </a>
          <a class="nav-item">
            Documentation
          </a>
          <span class="nav-item">
            <a class="button is-primary is-inverted">
              <span class="icon">
                <i class="fa fa-github"></i>
              </span>
              <span>Download</span>
            </a>
          </span>
        </div>
      </div>
    </header>
  </div>
--}
{--
  <!-- Hero content: will be in the middle -->
  <div class="hero-body">
    <div class="container has-text-centered">
      <h1 class="title">
        Title
      </h1>
      <h2 class="subtitle">
        Subtitle
      </h2>
    </div>
  </div>

  <!-- Hero footer: will stick at the bottom -->
  <div class="hero-foot">
    <nav class="tabs">
      <div class="container">
        <ul>
          <li class="is-active"><a>Overview</a></li>
          <li><a>Modifiers</a></li>
          <li><a>Grid</a></li>
          <li><a>Elements</a></li>
          <li><a>Components</a></li>
          <li><a>Layout</a></li>
        </ul>
      </div>
    </nav>
  </div>
</section>
--}


main : Html msg
main =
    home
