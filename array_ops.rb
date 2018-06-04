#!/usr/bin/env ruby

a = (1..5).to_a
b = (7..10).to_a
print "a: ",a,"\n"
print "b: ",b,"\n"
print "a | b == ",a | b,"\n"
print "a + b == ",a + b,"\n"
aa = a + a
print "aa: ",aa,"\n"
print "aa - [1] == ",aa - [1],"\n"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
