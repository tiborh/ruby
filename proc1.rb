#!/usr/bin/env ruby

outer = 1

def m &a_proc
  inner = 99
  a_proc.call(inner)
  puts "inner var = #{inner}"
  puts "argument is a #{a_proc.class}"
end

puts "outer var = #{outer}"
m {|inner| outer += inner}
puts "outer var = #{outer}"
