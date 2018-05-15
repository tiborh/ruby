#!/usr/bin/env ruby

def length_finder(input_array)
  input_array.map{ |x| x.length }
end

a = ["alpha","beta","gamma","delta"]

puts "#{a}"
puts "#{length_finder(a)}"
