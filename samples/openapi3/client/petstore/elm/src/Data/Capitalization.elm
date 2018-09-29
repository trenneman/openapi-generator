{-
   OpenAPI Petstore
   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Capitalization exposing (Capitalization, decoder, encoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias Capitalization =
    { smallCamel : Maybe String
    , capitalCamel : Maybe String
    , small_Snake : Maybe String
    , capital_Snake : Maybe String
    , sCA_ETH_Flow_Points : Maybe String
    , aTT_NAME : Maybe String
    }


decoder : Decoder Capitalization
decoder =
    Decode.succeed Capitalization
        |> optional "smallCamel" (Decode.nullable Decode.string) Nothing
        |> optional "CapitalCamel" (Decode.nullable Decode.string) Nothing
        |> optional "small_Snake" (Decode.nullable Decode.string) Nothing
        |> optional "Capital_Snake" (Decode.nullable Decode.string) Nothing
        |> optional "SCA_ETH_Flow_Points" (Decode.nullable Decode.string) Nothing
        |> optional "ATT_NAME" (Decode.nullable Decode.string) Nothing


encoder : Capitalization -> Encode.Value
encoder model =
    Encode.object
        [ ( "smallCamel", Maybe.withDefault Encode.null (Maybe.map Encode.string model.smallCamel) )
        , ( "CapitalCamel", Maybe.withDefault Encode.null (Maybe.map Encode.string model.capitalCamel) )
        , ( "small_Snake", Maybe.withDefault Encode.null (Maybe.map Encode.string model.small_Snake) )
        , ( "Capital_Snake", Maybe.withDefault Encode.null (Maybe.map Encode.string model.capital_Snake) )
        , ( "SCA_ETH_Flow_Points", Maybe.withDefault Encode.null (Maybe.map Encode.string model.sCA_ETH_Flow_Points) )
        , ( "ATT_NAME", Maybe.withDefault Encode.null (Maybe.map Encode.string model.aTT_NAME) )
        ]
