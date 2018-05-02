#!/usr/bin/env ruby

a = (1..5).to_a
a << (6..10).to_a
print a,"\n"

a = a.flatten
print a,"\n"
