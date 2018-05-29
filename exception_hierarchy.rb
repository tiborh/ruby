#!/usr/bin/env ruby

puts "xxxError.ancestors"
p ZeroDivisionError.ancestors
p SyntaxError.ancestors
p NoMethodError.ancestors

puts "\nTaking care of an Error on the higher level in the hierarchy, takes care of those under it."

begin
  eval "42 / 0"
rescue StandardError => err
  puts "Error caught: #{err.class}"
end

puts "\ncreating custom error:"

class SomeCustomError < StandardError
end

p SomeCustomError.ancestors
