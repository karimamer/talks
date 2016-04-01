**lets take a look at libraries in Haskell  **

**chatter**
----------------------

chatter has advanced features that i didn't try or can do with the naive implementation like
- chunking
- parts of speech taggers
- loading famous corpus like Brown , Email, Wikinier ,
- parsing defined grammar using parsec
https://github.com/creswick/chatter/blob/master/src/NLP/Extraction/Examples/ParsecExamples.hs
- implements some ML algorithms
  like
    - Averaged Perceptron Tagger
    - UnambiguousTagger
    - Average Perceptron
- check for Similarity
- tokenizing

chunking
---------------------
Text chunking subsumes a range of tasks.  The simplest is finding 'noun groups' or 'base NPs' ... non-recursive noun phrases up to the head (for English).  More ambitious systems may add additional chunk types, such as verb groups, or may seek a complete partitioning of the sentence into chunks of different types:
from http://cs.nyu.edu/courses/spring04/G22.2591-001/lecture3.html

example from chatter's docs
```haskell
import NLP.POS
import NLP.Chunk
tgr <- defaultTagger
chk <- defaultChunker
chunkText tgr chk "Monads are monoids in the category of endofunctors."
```
http://hackage.haskell.org/package/chatter-0.8.0.2/docs/NLP-Chunk.html


whats is part of speech tagger  
-----------------------------------------
```
it is the process of marking up a word in a text (corpus) as corresponding to a particular part of speech, based on both its definition and its context
```

lets see try out the tagger
```haskell
import NLP.POS
import Data.Text (pack)

main = do
  tagger <- defaultTagger
  let text = pack "Dhafer youssef music is so beautiful and great"
  print $ tag tagger text
```


lets dive in and look and use chatter's tokenizer
```haskell
import qualified  NLP.Tokenize.Chatter as Tk  
Prelude Tk> :t Tk.tokenize
Tk.tokenize :: Data.Text.Internal.Text -> NLP.Types.Tree.Sentence
```
