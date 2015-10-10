#!/usr/bin/env python3
import copy

x = [-2, 9, 7, -4, 3]
print(all(x), any(x), len(x), min(x), max(x))
x.append(0)
print(all(x), any(x), len(x), min(x), max(x))
for t in zip(range(4), range(0,10,2), range(1,10,2)):
	print(t)

print('-' * 10)

songs = ["Because", "Boys", "Carol"]
beatles = songs		# 复制引用
print(songs)
print(beatles)
songs[2] = "Cayenne"

print('-' * 10)
print(songs)
print(beatles)

beatles2 = songs[:]	# 复制内容, 但对于嵌套子列表，仍只复制引用
beatles2[2] = "红玫瑰"
print('-' * 10)
print(songs)
print(beatles2)

print('-' * 10)
x = [53, 68, ['a','b','c']]
y = x[:]	# shallow copy
print(x,y)
y[1] = 40
x[2][0] = 'Q'
print(x,y)
y = copy.deepcopy(x)	# 深复制，子列表也被复制
y[1] = 60
x[2][0] = 'H'
print(x,y)
