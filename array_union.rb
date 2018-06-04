#!/usr/bin/env ruby

a0 = (1..6).to_a
puts "first: #{a0}"
a1 = (8..12).to_a
puts "second: #{a1}"

u0 = a0 + a1
puts "added: #{u0}"
u1 = a0 | a1
puts "union: #{u1}"

puts "subtracting the second one: #{u1 - a1}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
