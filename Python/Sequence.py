#!/usr/bin/env python3
import collections
import os

# namedtuple命名元组 有点像结构体
Sale = collections.namedtuple("Sale",
	"productid customerid date quantity price");
sales = []
sales.append(Sale(432, 921, "2008-09-14", 3, 7.99))
sales.append(Sale(419, 874, "2008-09-15", 1, 18.99))

total = 0
for sale in sales:
	total += sale.quantity * sale.price

print("Total ${0:.2f}".format(total))

# list comprehension
leaps = [y for y in range(1900, 1940)
	if (y % 4 == 0 and y % 100 != 0 ) or  (y % 400 == 0)]
print(leaps)

# set
S = {7, "veil", 0, -29, ("x", 11), "sun", frozenset({8, 4, 7}), 913}
print(S)
# set comprehension
files = ['a.htm','b.html','c.html', 
	'a.htm','b.html','c.html',
	'a.html']
html = {x for x in files if x.lower().endswith((".htm", ".html")) }
print(html)

# dict
d1 = dict({"id": 1948, "name": "Washer", "size": 3})
d2 = dict(id = 1948, name = "Washer", size = 3)
d3 = dict([("id", 1948), ("name", "Washer"), ("size",3)])
d4 = dict(zip(("id","name","size"), (1948, "Washer", 3)))
d5 = {"id": 1948, "name": "Washer", "size": 3}
#ord1 = collections.OrderedDict({"id": 1948, "name": "Washer", "size": 3})
ord1 = collections.OrderedDict([("id", 1948), ("name", "Washer"), ("size",3)])
print(d1)
print(d2)
print(d3)
print(d4)
print(d5)
print(ord1)
# 遍历dict
for (k,v) in d5.items() :
	print(k,v)
print('-' * 10)

for k in d5 :
	print(k, d5[k])
print('-' * 10)
# 有序字典
for k in ord1 :
	print(k, ord1[k])

file_sizes = {name : os.path.getsize(name) for name in os.listdir(".")}
print(file_sizes)

