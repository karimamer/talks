# some unicode management statements:
--------------------------------------

x = "hello"  # this is a string

y = u"hello" # this is unicode built from the default encoding

z = unicode("hello", 'utf-8') # this is unicode built from utf-8 encoding

Notice that if the default charset is 'utf-8', both y and z will be the same. Otherwise they will be different. A way to

express the encoding in python code is using this line at the beginning of the file:

# -*- coding: utf-8 -*- 

When I say "built from utf-8 encoding" I mean that in order for the system to recognize which chars you are processing it needs to know how were they encoded.

h = x.decode('utf-8') # this is unicode built from utf-8

j = y.encode('utf-8') # this is a string encoded using utf-8
