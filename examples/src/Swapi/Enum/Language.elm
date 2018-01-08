-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Swapi.Enum.Language exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-|

  - En - English
  - Es - Spanish
  - No - Norwegian

-}
type Language
    = En
    | Es
    | No


decoder : Decoder Language
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "EN" ->
                        Decode.succeed En

                    "ES" ->
                        Decode.succeed Es

                    "NO" ->
                        Decode.succeed No

                    _ ->
                        Decode.fail ("Invalid Language type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Language -> String
toString enum =
    case enum of
        En ->
            "EN"

        Es ->
            "ES"

        No ->
            "NO"
