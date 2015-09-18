#!/bin/sh
# ${1//.m/.o}将第一个参数的.m扩展名替换成.o, 用法如: ./cm.sh HelloWorld.m
clang -fobjc-arc $1 -o ${1//.m/.o}
echo "编绎完成!"