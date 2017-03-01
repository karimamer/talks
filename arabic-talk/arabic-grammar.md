some arabic Grammer
========================

```python
>>> word1 = u"ضارب"
>>> wazn =  u"فَاعِل"
>>> araby.waznlike(word1, wazn)
True
```


```python
>>> word = u"يُتَسََلَّمْنَ"
>>> reduced = araby.reduce_tashkeel(word)
>>> print reduced.encode('utf8')
يُتسلّمن
```



```python
>>> word1 = u"ضَربٌ"
>>> word2 = u"ضَرْبٌ"
>>> araby.vocalizedlike(word1, word2)
True
>>> word1 = u"ضَربٌ"
>>> word2 = u"ضَرْبٍ"
>>> araby.vocalized_similarity(word1, word2)
-1
```

```python
>>> text = u"العربية لغة جميلة."
>>> tokens = araby.tokenize(text)
>>> print u"\n".join(tokens)
‎العربية
‎لغة
‎جميلة
.
```


```python
>>> extract_named(u"قال خالد بن رافع  حدثني أحمد بن عنبر عن خاله")    
("خالد بن رافع"، "أحمد بن عنبر ")
```


```python
>>> detect_named_position(u"قال خالد بن رافع  حدثني أحمد بن عنبر عن خاله")    
((1,3), (6,8))
```
