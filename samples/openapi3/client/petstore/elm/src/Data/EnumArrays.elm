{-
   OpenAPI Petstore
   This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

   OpenAPI spec version: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.EnumArrays exposing (ArrayEnum(..), EnumArrays, JustSymbol(..), decoder, encoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias EnumArrays =
    { just_symbol : Maybe JustSymbol
    , array_enum : Maybe (List ArrayEnum)
    }


type JustSymbol
    = GreaterThan
    | Dollar


type ArrayEnum
    = Fish
    | Crab


decoder : Decoder EnumArrays
decoder =
    Decode.succeed EnumArrays
        |> optional "just_symbol" (Decode.nullable justSymbolDecoder) Nothing
        |> optional "array_enum" (Decode.nullable (Decode.list arrayEnumDecoder)) Nothing


encoder : EnumArrays -> Encode.Value
encoder model =
    Encode.object
        [ ( "just_symbol", Maybe.withDefault Encode.null (Maybe.map justSymbolEncoder model.just_symbol) )
        , ( "array_enum", Maybe.withDefault Encode.null (Maybe.map (Encode.list arrayEnumEncoder) model.array_enum) )
        ]


justSymbolDecoder : Decoder JustSymbol
justSymbolDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    ">=" ->
                        Decode.succeed GreaterThan

                    "$" ->
                        Decode.succeed Dollar

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )


justSymbolEncoder : JustSymbol -> Encode.Value
justSymbolEncoder model =
    case model of
        GreaterThan ->
            Encode.string ">="

        Dollar ->
            Encode.string "$"


arrayEnumDecoder : Decoder ArrayEnum
arrayEnumDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "fish" ->
                        Decode.succeed Fish

                    "crab" ->
                        Decode.succeed Crab

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )


arrayEnumEncoder : ArrayEnum -> Encode.Value
arrayEnumEncoder model =
    case model of
        Fish ->
            Encode.string "fish"

        Crab ->
            Encode.string "crab"
