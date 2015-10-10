#!/usr/bin/env python3
'''
Python 包含4种函数：
全局函数，局部函数，Lambda, 方法
'''
s = lambda x: '' if x == 1 else 's'
count = 1
print("{0} file{1} processed".format(count, s(count)))
count = 2
print("{0} file{1} processed".format(count, s(count)))

elements = [(2,12,'Mg'), (1,11,'Na'), (2, 4,"Be")]
elements.sort()
print(elements)
#elements.sort(key = lambda e: (e[1], e[2]))
elements.sort(key = lambda e: e[1:3])
print(elements)
elements.sort(key = lambda e: (e[2].lower(), e[1]))
print(elements)
