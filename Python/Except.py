#!/usr/bin/env python3

# 常见异常继承图
'''
object(
	BaseException(
		Excpetion(
			ArithmeticError,
			EnvironmentError(
				IOError, OSError
			),
			EOFError,
			LookupError(
				IndexError, KeyError
			),
			ValueError
		)
	)
)
'''

# 跳出多层循环的一种方法
class FoundException(Exception): pass

try:
	for x in range(10):
		for y in range(20,30):
			if x == 5 and y == 25:
				raise FoundException()
except FoundException as e:
	print("found at ({},{})".format(x,y))
else:
	# 没有异常时执行
	print("not found")

print('done')


