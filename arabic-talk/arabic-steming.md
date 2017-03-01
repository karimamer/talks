
stemming
=================

 stemming is the process of reducing inflected (or sometimes derived) words to base or root form—generally a written word form


```python
>>> word = u'الاسطورة'
word = u'يحي'
>>> #make propre display for unicode
... import pyarabic.arabrepr
>>> arepr = pyarabic.arabrepr.ArabicRepr()
>>> repr = arepr.repr
>>>
>>> from tashaphyne.stemming import ArabicLightStemmer
>>> ArListem = ArabicLightStemmer()
>>> word = u'استثمار''
>>> # stemming word
... stem = ArListem.light_stem(word)
>>> # extract stem
... print ArListem.get_stem()
>>> # extract root
... print ArListem.get_root()
>>> # get prefix position index
... print ArListem.get_left()
>>> # get prefix
... print ArListem.get_prefix()    
>>> # get prefix with a specific index
... print ArListem.get_prefix(2)    
>>> # get suffix position index
... print ArListem.get_right()
>>> # get suffix
... print ArListem.get_suffix()    
>>> # get suffix with a specific index
... print ArListem.get_suffix(10)    
>>> # get affix
>>> print ArListem.get_affix()
>>> # get affix tuple
... print repr(ArListem.get_affix_tuple())    
>>> # star words
... print ArListem.get_starword()
>>> # get star stem
... print ArListem.get_starstem()

>>> #  get unvocalized word
... print ArListem.get_unvocalized()
```

```python
from nltk.stem.isri import ISRIStemmer
st = ISRIStemmer()
w= 'حركات'
st.stem(w.decode('utf-8'))
حرك
>>> st.norm('استعمار')
'\xd8\xa7\xd8\xb3\xd8\xaa\xd8\xb9\xd9\x85\xd8\xa7\xd8\xb1'
>>>

```
