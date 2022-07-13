module Pictures exposing
    ( Event(..)
    , LineStyle
    , Picture
    , black
    , blue
    , brown
    , circle
    , circle_
    , dashed
    , display
    , displayWithMouse
    , displayWithMouseAndTime
    , displayWithState
    , displayWithTime
    , dotted
    , ellipse
    , ellipse_
    , empty
    , filledCircle
    , filledRectangle
    , green
    , group
    , image
    , ngon
    , ngon_
    , orange
    , path
    , path_
    , polygon
    , polygon_
    , purple
    , rectangle
    , rectangle_
    , red
    , rgb
    , rotate
    , scale
    , segment
    , segment_
    , shift
    , solid
    , square
    , square_
    , text
    , white
    , yellow
    )

import Browser
import Browser.Dom
import Browser.Events
import Collage exposing (Collage)
import Collage.Render
import Collage.Text
import Color exposing (Color)
import Html exposing (Html)
import Html.Attributes exposing (default)
import Json.Decode as Decoder exposing (Decoder)
import Svg exposing (Svg, g, line, polyline, rect, svg)
import Svg.Attributes exposing (fill, height, points, r, stroke, width, x, x1, x2, y, y1, y2)
import Task exposing (Task)
import Time


type alias Size =
    { width : Int, height : Int }


type Msg msg
    = Resize Size
    | User msg


type alias Model model =
    { size : Maybe Size
    , user : model
    }


wrapModel : model -> flags -> ( Model model, Cmd (Msg msg) )
wrapModel model _ =
    ( { size = Nothing, user = model }
    , Task.perform Resize getWindowSize
    )


wrapUpdate : (msg -> model -> model) -> Msg msg -> Model model -> ( Model model, Cmd (Msg msg) )
wrapUpdate update msg model =
    ( case msg of
        Resize size ->
            { model | size = Just size }

        User userMsg ->
            { model | user = update userMsg model.user }
    , Cmd.none
    )


wrapView : (model -> Picture) -> Model model -> Html (Msg msg)
wrapView pic model =
    case model.size of
        Nothing ->
            Html.text ""

        -- Html.text "Calculating the size of the window"
        Just size ->
            Html.map never
                (Collage.Render.svgBox
                    ( toFloat size.width, toFloat size.height )
                    (group
                        [ pic model.user
                        , grid 0 0 (toFloat size.width) (toFloat size.height)
                        ]
                    )
                )


gridsize : Float
gridsize =
    20


grid : Float -> Float -> Float -> Float -> Picture
grid x1 y1 x2 y2 =
    let
        xh =
            (x2 - x1) / 2

        yh =
            (y2 - y1) / 2
    in
    group
        [ Collage.filled (Collage.uniform red) (Collage.circle 2)
        , group <|
            List.map
                (\i ->
                    let
                        x =
                            toFloat i * gridsize
                    in
                    path_ (dotted Color.lightGrey) [ ( x, -yh ), ( x, yh ) ]
                )
                (List.range (ceiling (-xh / gridsize)) (floor (xh / gridsize)))
        , group <|
            List.map
                (\j ->
                    let
                        y =
                            toFloat j * gridsize
                    in
                    segment_ (dotted Color.lightGrey) ( -xh, y ) ( xh, y )
                )
                (List.range (ceiling (-yh / gridsize)) (floor (yh / gridsize)))
        ]



-- Beginner Mode


type BeginnerMsg
    = BeginnerMove MousePosition
    | BeginnerTime Time.Posix


type alias MousePosition =
    { x : Float, y : Float }


positionDecoder : Decoder MousePosition
positionDecoder =
    Decoder.map2 MousePosition
        (Decoder.field "pageX" Decoder.float)
        (Decoder.field "pageY" Decoder.float)


type alias BeginnerModel =
    { mouse : ( Float, Float )
    , time : Float
    }


beginnerModel : BeginnerModel
beginnerModel =
    { mouse = ( 0, 0 ), time = 0 }


beginnerView : (( Float, Float ) -> Float -> Picture) -> Model BeginnerModel -> Html (Msg msg)
beginnerView pic model =
    wrapView (\_ -> pic model.user.mouse model.user.time) model


display : Picture -> Program () (Model BeginnerModel) (Msg BeginnerMsg)
display p =
    displayWithMouseAndTime (\_ _ -> p)


displayWithMouse : (( Float, Float ) -> Picture) -> Program () (Model BeginnerModel) (Msg BeginnerMsg)
displayWithMouse pic =
    displayWithMouseAndTime (\pos _ -> pic pos)


displayWithTime : (Float -> Picture) -> Program () (Model BeginnerModel) (Msg BeginnerMsg)
displayWithTime pic =
    displayWithMouseAndTime (\_ t -> pic t)


displayWithMouseAndTime :
    (( Float, Float ) -> Float -> Picture)
    -> Program () (Model BeginnerModel) (Msg BeginnerMsg)
displayWithMouseAndTime pic =
    Browser.element
        { init = wrapModel beginnerModel
        , view = beginnerView pic
        , update = wrapUpdate (\_ model -> model)
        , subscriptions =
            \_ ->
                Sub.batch
                    [ Sub.map Resize (Browser.Events.onResize Size)
                    , Sub.map User (Browser.Events.onMouseMove (Decoder.map BeginnerMove positionDecoder))
                    , Sub.map User (Browser.Events.onAnimationFrame BeginnerTime)
                    ]
        }


type Event
    = Left
    | Right
    | Up
    | Down
    | Space
    | Click
    | Tick
    | NoEvent


displayWithState :
    model
    -> (model -> Picture)
    -> (Event -> model -> model)
    -> Program () (Model model) (Msg Event)
displayWithState initialModel view update =
    Browser.element
        { init = wrapModel initialModel
        , view = wrapView view
        , update = wrapUpdate update
        , subscriptions =
            \_ ->
                Sub.batch
                    [ Sub.map Resize (Browser.Events.onResize Size)
                    , Sub.map User (Browser.Events.onClick (Decoder.map (\_ -> Click) positionDecoder))
                    , Sub.map User (Browser.Events.onKeyDown keyDecoder)
                    , Sub.map User (Time.every 50 (\_ -> Tick))
                    ]
        }


keyDecoder : Decoder Event
keyDecoder =
    let
        toKey string =
            case string of
                " " ->
                    Space

                "ArrowLeft" ->
                    Left

                "ArrowUp" ->
                    Up

                "ArrowRight" ->
                    Right

                "ArrowDown" ->
                    Down

                _ ->
                    NoEvent
    in
    Decoder.map toKey (Decoder.field "key" Decoder.string)



-- Window Size


getWindowSize : Task x Size
getWindowSize =
    let
        viewportToSize { viewport } =
            { width = round viewport.width, height = round viewport.height }
    in
    Task.map viewportToSize Browser.Dom.getViewport



-- Pictures


type alias Picture =
    Collage Never


circle : Float -> Picture
circle =
    circle_ Collage.defaultLineStyle


circle_ : LineStyle -> Float -> Picture
circle_ s r =
    Collage.outlined s (Collage.circle r)


filledCircle : Color -> Float -> Picture
filledCircle c r =
    Collage.filled (Collage.uniform c) (Collage.circle r)


rectangle : ( Float, Float ) -> Picture
rectangle =
    rectangle_ Collage.defaultLineStyle


rectangle_ : LineStyle -> ( Float, Float ) -> Picture
rectangle_ s ( x, y ) =
    Collage.outlined s (Collage.rectangle x y)


filledRectangle : Color -> ( Float, Float ) -> Picture
filledRectangle c ( x, y ) =
    Collage.filled (Collage.uniform c) (Collage.rectangle x y)


segment : ( Float, Float ) -> ( Float, Float ) -> Picture
segment =
    segment_ Collage.defaultLineStyle


segment_ : LineStyle -> ( Float, Float ) -> ( Float, Float ) -> Picture
segment_ s p1 p2 =
    Collage.traced s (Collage.segment p1 p2)


path : List ( Float, Float ) -> Picture
path =
    path_ Collage.defaultLineStyle


path_ : LineStyle -> List ( Float, Float ) -> Picture
path_ s ps =
    Collage.traced s (Collage.path ps)


ellipse : ( Float, Float ) -> Picture
ellipse =
    ellipse_ Collage.defaultLineStyle


ellipse_ : LineStyle -> ( Float, Float ) -> Picture
ellipse_ s ( x, y ) =
    Collage.outlined s (Collage.ellipse x y)


square : Float -> Picture
square =
    square_ Collage.defaultLineStyle


square_ : LineStyle -> Float -> Picture
square_ s a =
    Collage.outlined s <|
        Collage.square a


ngon : Float -> Float -> Picture
ngon =
    ngon_ black


ngon_ : Color -> Float -> Float -> Picture
ngon_ c n r =
    Collage.rotate (pi / 2) (Collage.filled (Collage.uniform c) (Collage.ngon (floor n) r))


polygon : List ( Float, Float ) -> Picture
polygon =
    polygon_ Collage.defaultLineStyle


polygon_ : LineStyle -> List ( Float, Float ) -> Picture
polygon_ s ps =
    Collage.outlined s (Collage.polygon ps)


text : String -> Picture
text s =
    Collage.rendered (Collage.Text.fromString s)


image : ( Float, Float ) -> String -> Picture
image =
    Collage.image


group : List Picture -> Picture
group =
    Collage.group


empty : Picture
empty =
    Collage.rendered Collage.Text.empty



-- Transformations


shift : ( Float, Float ) -> Picture -> Picture
shift =
    Collage.shift


scale : Float -> Picture -> Picture
scale x f =
    Collage.scale x (Collage.group [ f ])


rotate : Float -> Picture -> Picture
rotate a f =
    Collage.rotate a (Collage.group [ f ])



-- Line Styles


type alias LineStyle =
    Collage.LineStyle


defaultLineWidth : Float
defaultLineWidth =
    2


solid : Color -> LineStyle
solid c =
    Collage.solid defaultLineWidth (Collage.uniform c)


dashed : Color -> LineStyle
dashed c =
    Collage.dash defaultLineWidth (Collage.uniform c)


dotted : Color -> LineStyle
dotted c =
    Collage.dot defaultLineWidth (Collage.uniform c)



-- Colors


red : Color
red =
    Color.red


orange : Color
orange =
    Color.orange


yellow : Color
yellow =
    Color.yellow


green : Color
green =
    Color.green


blue : Color
blue =
    Color.blue


purple : Color
purple =
    Color.purple


brown : Color
brown =
    Color.brown


white : Color
white =
    Color.white


black : Color
black =
    Color.black


rgb : Float -> Float -> Float -> Color
rgb =
    Color.rgb
