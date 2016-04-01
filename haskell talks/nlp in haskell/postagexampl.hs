{-# LANGUAGE OverloadedStrings #-}
module Examples where


import NLP.POS
import Data.Text (pack)


main = do
    tagger <- defaultTagger
    let text = pack "Dhafer youssef music is so beautiful and great."
    print $ tag tagger text
