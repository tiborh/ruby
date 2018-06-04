#!/usr/bin/env ruby

require 'set'

s1 = (1..10).to_set
s2 = [1, 3, 4, 6, 9, 10, 11].to_set
puts s1.class

print "the set: ",s1,"\n"
puts s1.inspect
set_div = s1.divide { |i,j| (i - j).abs == 1 }
puts set_div.inspect

set_div2 = s2.divide { |i,j| (i - j).abs == 1 }

puts s2.inspect

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
