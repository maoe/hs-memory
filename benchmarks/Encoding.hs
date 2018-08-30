{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}
module Main (main) where
import Criterion.Main
import Data.ByteString (ByteString)

import Data.ByteArray.Encoding

main :: IO ()
main = defaultMain
    [ bench "convertFromBase Base64" $
        nf (convertFromBase @ByteString @ByteString Base64)
            "VGhlIHF1aWNrIGJyb3duIGZveCBqdW1wcyBvdmVyIHRoZSBsYXp5IGRvZw=="
    ]
