#!/usr/bin/env ruby

puts "Range is a class"
puts (1..5).class

a = (1..5)
puts "It prints as range"
puts a

puts "Each loop shows the diference"
a.each do |a|
  print a," "
end
puts ""

puts "non-inclusive range"
b = (0...5)
puts b

b.each do |b|
  print b," "
end
puts ""

puts "Range to array;"
arr = *(1..10)
print arr,"\n"
