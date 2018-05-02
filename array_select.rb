#!/usr/bin/env ruby

puts "select even numbers from array"
a = *(1..10)
ev = a.select {|num| num.even?}
od = a.select {|num| num % 2 != 0}
print a,"\n"
print ev,"\n" 
print od,"\n"
