unfortunately Segmentation is broken but what i like in this lib is the implementation of the greedy algorithm

https://github.com/Lemmih/cndict/blob/master/src/Data/Chinese/CCDict.hs#L113
example  
```haskell
module Main where

import Data.Chinese.CCDict
import Data.Chinese.Segmentation
import Data.Chinese.Frequency
import Data.Text
import Control.Exception
import Control.Monad

main :: IO ()
main = do
  putStrLn "Loading dictionary..."
  evaluate ccDict
  putStrLn "Loading word frequency database..."
  evaluate freqMap
  forever $ do
    putStrLn "Type some Chinese characters and I'll tell you how to segment the words:"
    txt <- getLine
    putStrLn $ ppTokens $ tokenizer (pack txt)
```
