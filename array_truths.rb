#!/usr/bin/env ruby

a = (0..9).to_a

puts "the array: #{a}"
puts "all positive or zero? #{a.all? { |e| e >= 0 } }"
puts "all positive? #{a.all? { |e| e > 0 } }"
puts "none greater than 10? #{a.none? { |e| e > 10 } }"
puts "any odd? #{a.any? { |e| e % 2 == 1 } }"

require_relative("hash_reader")

names = hash_reader()

puts "the names:\n#{names}"

puts "none older than 70? #{names.none? {|name,age| age > 70 } }"
puts "none younger than 65? #{names.none? {|name| names[name] < 65 } }"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
