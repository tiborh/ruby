#!/usr/bin/env ruby

puts "select even numbers from array"
a = *(1..10)
ev = a.select {|num| num.even?}
print a,"\n"
print ev,"\n"
