#!/usr/bin/env ruby

# source:
# https://www.sitepoint.com/closures-ruby/

def method_a
 lambda { return "return from lambda" }.call # this return is not printed
 return "method a returns"
end

def method_b
 proc { return "return from proc" }.call
 return  "method b returns"     # never reached
end

def method_c
  proc { next "return from proc" }.call
  return  "method c returns"
end

puts "Calling method_a, which includes lambda: #{method_a}"
puts "Calling method_b, which includes proc: #{method_b}"
puts "Calling method_c, which includes proc: #{method_c}"
