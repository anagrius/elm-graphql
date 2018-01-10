-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.LockReason exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible reasons that an issue or pull request was locked.

  - OffTopic - The issue or pull request was locked because the conversation was off-topic.
  - TooHeated - The issue or pull request was locked because the conversation was too heated.
  - Resolved - The issue or pull request was locked because the conversation was resolved.
  - Spam - The issue or pull request was locked because the conversation was spam.

-}
type LockReason
    = OffTopic
    | TooHeated
    | Resolved
    | Spam


decoder : Decoder LockReason
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "OFF_TOPIC" ->
                        Decode.succeed OffTopic

                    "TOO_HEATED" ->
                        Decode.succeed TooHeated

                    "RESOLVED" ->
                        Decode.succeed Resolved

                    "SPAM" ->
                        Decode.succeed Spam

                    _ ->
                        Decode.fail ("Invalid LockReason type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : LockReason -> String
toString enum =
    case enum of
        OffTopic ->
            "OFF_TOPIC"

        TooHeated ->
            "TOO_HEATED"

        Resolved ->
            "RESOLVED"

        Spam ->
            "SPAM"
