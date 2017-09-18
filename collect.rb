#!/usr/bin/env ruby

# source:
# https://www.tutorialspoint.com/ruby/ruby_iterators.htm

a = (1..10).to_a

puts "starting array:"
print a.join(", "),"\n"
puts "using collect as is: a.collect"
print a.collect,"\n"
# same result as above, the original instructions ar clearly wrong.
# puts "assigning it to an empty array:"
# b = Array.new
# b = a.collect
# puts b
multiplier = 10
puts "multiplying each item with #{multiplier} {|x| x * #{multiplier}}:"
print a.collect{|x| x * multiplier},"\n"
