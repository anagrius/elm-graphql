-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.Object.UnassignedEvent exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UnassignedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.UnassignedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the assignable associated with the event.
-}
assignable : SelectionSet selection Github.Interface.Assignable -> FieldDecoder selection Github.Object.UnassignedEvent
assignable object =
    Object.selectionFieldDecoder "assignable" [] object identity


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder Github.Scalar.DateTime Github.Object.UnassignedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


id : FieldDecoder Github.Scalar.Id Github.Object.UnassignedEvent
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| Identifies the subject (user) who was unassigned.
-}
user : SelectionSet selection Github.Object.User -> FieldDecoder (Maybe selection) Github.Object.UnassignedEvent
user object =
    Object.selectionFieldDecoder "user" [] object (identity >> Decode.maybe)
