lets explore arabic text
==============================

normalizing arabic text
---------------------------
### Tashaphyne

```python
from  tashaphyne import normalize
text=u"الْعَرَبِيّةُ"
normalize.strip_tashkeel(text)
العربية
```
```python
text=u"العـــــربية"
normalize.strip_tatweel(text)
العربية

```
```python
text=u"أهؤلاء من أولئكُ"
normalize.normalize_hamza(text)
اهءلاء من اولءكُ

```
```python
text=u"لانها لالئ الاسلام"
normalize.normalize_lamalef(text)
لانها لالئ الاسلام
```

```python
text=u"اشترت سلمى دمية وحلوى"
 normalize.normalize_spellerrors(text)
```

```python
text=u'أستشتري دمـــى آلية لأبنائك قبل الإغلاق'
normalize_searchtext(text)
استشتري دمي اليه لابناءك قبل الاغلاق

```
