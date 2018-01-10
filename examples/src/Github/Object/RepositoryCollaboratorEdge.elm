-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.Object.RepositoryCollaboratorEdge exposing (..)

import Github.Enum.RepositoryPermission
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryCollaboratorEdge
selection constructor =
    Object.selection constructor


cursor : FieldDecoder String Github.Object.RepositoryCollaboratorEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet selection Github.Object.User -> FieldDecoder selection Github.Object.RepositoryCollaboratorEdge
node object =
    Object.selectionFieldDecoder "node" [] object identity


{-| The permission the user has on the repository.
-}
permission : FieldDecoder Github.Enum.RepositoryPermission.RepositoryPermission Github.Object.RepositoryCollaboratorEdge
permission =
    Object.fieldDecoder "permission" [] Github.Enum.RepositoryPermission.decoder
