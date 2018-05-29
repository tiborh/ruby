#!/usr/bin/env ruby

def div(a,b)
  throw :divByZero if b == 0
  return a / b
end

puts div(1,2.0)
catch (:divByZero) do 
  puts div(3,5.0)
  puts div(2,0)
  puts "This one is never reached."
end

puts "Error caught. Still alive."

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
