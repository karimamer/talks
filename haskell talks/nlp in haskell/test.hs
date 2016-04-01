import qualified Data.Map

countStuff :: (Ord k) => Data.Map.Map k Int -> k -> Data.Map.Map k Int
countStuff m e = case (Data.Map.lookup e m) of
                    Just v -> Data.Map.insert e (v + 1) m
                    Nothing -> Data.Map.insert e 1 m


freqList :: (Ord k ) => [k] -> Data.Map.Map k Int
freqList = foldl countStuff Data.Map.empty
