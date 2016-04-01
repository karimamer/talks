**Let start with a Naive approach**
----------------------------------------------
Words are just a group of letters. You can represent a letter in Haskell as a char


```haskell
Prelude> 'k'
'k'
Prelude> :t 'k'
'k' :: Char
```
since we can represent letter in Haskell a char and a word is a group of letters we can represent a word as a list of chars

```haskell
Prelude> ['s','v','d','a','h']
"svdah"
```
Haskell has operations on lists leverage them

```haskell
Prelude> length "svdah"
5
Prelude> head "svdah"
s
Prelude> :t head
head :: [a] -> a
Prelude> :t tail
???????? guess
Prelude> tail "svdah"
"vdah"
Prelude> reverse "svdah"
"hadvs"
```
we can represent sentences in a list of a lists and i can use operations on lists
```haskell
Prelude> ["birds","requiem"]
["birds","requiem"]
Prelude> head["birds","requiem"]
"birds"
Prelude> head $ head ["birds","requiem"]
'b'
:t ($)
($) :: (a -> b) -> a -> b

Prelude> :t length
length :: Foldable t => t a -> Int
```
**we will cover how to turn a text into list of list later ;)**
we can't use length since it is going to give us the length of the list it is checking in the example above
but we might be able to map the length function on the list
```haskell
Prelude> :t map
map :: (a -> b) -> [a] -> [b]
map length ["birds","requiem"]
[5,7]
:t
```
but we only get a list of the lengths of the words we don't get the length of the sentence easy lets change that
```haskell
:t sum
sum :: (Num a, Foldable t) => t a -> a
sum $ map length ["birds","requiem"]
```
haskell has a a function named lines
```haskell
Prelude> :t lines
lines :: String -> [String]
```
lines will create  break strings that end with break lines
```haskell
Prelude> lines "all names used so far are songs by dafher yousef\n. He is a jazz / sufi musician"
["all names used so far are songs by dafher yousef",". He is a jazz / sufi musician"]
```
haskell has a function named words lets look at it's type
```haskell
Prelude> words "blending souls & shades ."
["blending","souls","&","shades","."]
```
lets map the function words on the output of the function lines applied on text
```haskell
Prelude> map words $ lines "all names used so far are songs by dafher yousef. He is a jazz / sufi musician"
[["all","names","used","so","far","are","songs","by","dafher","yousef.","He","is","a","jazz","/","sufi", "musician" ]]

```
after tokenizing i think i **maybe** able to make a word frequency we can represent a word frequency list in something like
```haskell
Whirling Birds Ceremony "Birds Requiem" Suite
[(	"Whirling Birds Ceremony",1 ),("Birds",2),("Ceremony",1),("Requiem",1)]
```
i can use the a map data structure from Data.map.Empty but i am lazy can some one do it for me :)
```haskell
Prelude> Data.Map.fromList[("Whirling Birds Ceremony",1 ),("Birds",2),("Ceremony",1),("Requiem",1)]
```
to insert new entries we can
```haskell
Data.Map.insert
```
to look stuff you can use
```haskell
Data.map.lookup
```

```haskell
Prelude> :t Data.Map.lookup
Data.Map.lookup
  :: Ord k =>
     k -> containers-0.5.6.2:Data.Map.Base.Map k a -> Maybe a
```
now that i now how to use Data.map i am going to try try a function to count the elements of list
```haskell
import qualified Data.Map

countStuff :: (Ord k) => Data.Map.Map k Int -> k -> Data.Map.Map k Int
countStuff m e = case (Data.Map.lookup e m) of
                    Just v -> Data.Map.insert e (v + 1) m
                    Nothing -> Data.Map.insert e 1 m
```
```haskell
foldl countStuff Data.Map.empty ["this", "is ", "cool" , "cool"]
```
the frequency list will be
```haskell
freqList :: (Ord N ) => [N] -> Data.Map.Map N Int
freqList = foldl countStuff Data.Map.empty
```

lets import a real word corpus instead of
```haskell
import System.IO
d <- openFile "rural.txt" ReadMode
y <- hGetContents d
```
```haskell
head $ words $ head $ lines y
```
okay nlp means i will need N-grams
```
an n-gram is a contiguous sequence of n items from a given sequence of text or speech. The items can be phonemes, syllables, letters, words or base pairs according to the application. The n-grams typically are collected from a text or speech corpus
```


okay lets create bigrams
```haskell
bigram :: [a] -> [[a]]
bigram [x] = []
bigram xs = take 2 xs : bigram (tail xs)
```
