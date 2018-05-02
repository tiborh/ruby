#!/usr/bin/env ruby

a = []
print a,"\n"
a << 1
print a,"\n"
a.push(2)
print a,"\n"
a.unshift(0)
print a,"\n"
b = *(3..9)
a << b
print a,"\n"
a.pop
a += b
print a,"\n"
