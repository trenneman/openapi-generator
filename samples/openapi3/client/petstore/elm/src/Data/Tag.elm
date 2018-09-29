{-
   OpenAPI Petstore
   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Tag exposing (Tag, decoder, encoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias Tag =
    { id : Maybe Int
    , name : Maybe String
    }


decoder : Decoder Tag
decoder =
    Decode.succeed Tag
        |> optional "id" (Decode.nullable Decode.int) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing


encoder : Tag -> Encode.Value
encoder model =
    Encode.object
        [ ( "id", Maybe.withDefault Encode.null (Maybe.map Encode.int model.id) )
        , ( "name", Maybe.withDefault Encode.null (Maybe.map Encode.string model.name) )
        ]
