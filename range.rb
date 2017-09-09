#!/usr/bin/env ruby

puts "Range is a class"
puts (1..5).class

a = (1..5)
puts "It prints as range"
puts a

puts "Each loop shows the diference"
a.each do |a|
  puts a
end

puts "non-inclusive range"
b = (0...5)
puts b

b.each do |b|
  puts b
end
