module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers contenido =
    Html.div []
        [ Html.h1 [] [ Html.text contenido ]
        , Html.h2 [] [ Html.text contenido ]
        , Html.h3 [] [ Html.text contenido ]
        , Html.h4 [] [ Html.text contenido ]
        , Html.h5 [] [ Html.text contenido ]
        , Html.h6 [] [ Html.text contenido ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink linkPagina texto =
    Html.a [ Html.Attributes.href linkPagina ] [ Html.text texto ]
