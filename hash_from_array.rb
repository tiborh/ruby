#!/usr/bin/env ruby

a = [:punch, 0]
b = [:kick, 72]
c = [:stops_bullets_with_hands, false]

# best: array pairs inside an array
# [a+b+c] would give a flat array, which is no good, only in Perl
abc = [a,b,c]

h = Hash[abc]

puts "#{h}"

puts Hash[4, 8]
puts Hash[ [[4, 8], [15, 16]] ]

ary = [[4, 8], [15, 16], [23, 42]]
puts Hash[*ary.flatten]
