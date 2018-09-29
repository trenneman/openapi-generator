{-
   OpenAPI Petstore
   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Name exposing (Name, decoder, encoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


{-| Model for testing model name same as property name
-}
type alias Name =
    { name : Int
    , snake_case : Maybe Int
    , property : Maybe String
    , n123Number : Maybe Int
    }


decoder : Decoder Name
decoder =
    Decode.succeed Name
        |> required "name" Decode.int
        |> optional "snake_case" (Decode.nullable Decode.int) Nothing
        |> optional "property" (Decode.nullable Decode.string) Nothing
        |> optional "123Number" (Decode.nullable Decode.int) Nothing


encoder : Name -> Encode.Value
encoder model =
    Encode.object
        [ ( "name", Encode.int model.name )
        , ( "snake_case", Maybe.withDefault Encode.null (Maybe.map Encode.int model.snake_case) )
        , ( "property", Maybe.withDefault Encode.null (Maybe.map Encode.string model.property) )
        , ( "123Number", Maybe.withDefault Encode.null (Maybe.map Encode.int model.n123Number) )
        ]
