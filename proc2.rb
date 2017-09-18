#!/usr/bin/env ruby

outer = 1

puts "outer at the time of definition: #{outer}"
def m a_var
  inner = 99
  puts "inner var = #{inner}"
  proc {inner + a_var}          # lambda could also be used
end

p = m(outer)
puts "p is a #{p.class}"
puts "p.inspect: #{p.inspect}"

outer = 0
puts "changed outer to #{outer} by the time of `call`"
puts "result of proc call: #{p.call}"
