#!/usr/bin/env ruby

p = proc {|i| i * 2}
l = proc {|i| i * 3}

a = (1..3).to_a

# map accepts proc or lambda instead of a block
puts "an_array.map(&a_proc): #{a.map(&p)}"
puts "a similar one: #{a.map(&l)}"
