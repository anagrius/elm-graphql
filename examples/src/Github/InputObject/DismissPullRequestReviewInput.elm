-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.DismissPullRequestReviewInput exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a DismissPullRequestReviewInput into a value that can be used as an argument.
-}
encode : DismissPullRequestReviewInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "pullRequestReviewId", Encode.string input.pullRequestReviewId |> Just ), ( "message", Encode.string input.message |> Just ) ]


{-| Type for the DismissPullRequestReviewInput input object.
-}
type alias DismissPullRequestReviewInput =
    { clientMutationId : OptionalArgument String, pullRequestReviewId : String, message : String }
