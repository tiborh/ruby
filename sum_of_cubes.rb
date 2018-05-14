#!/usr/bin/env ruby

def sum_of_cubes(a, b)
  (a..b).to_a.inject(0) { |sum,n| sum + n**3 }
end

puts sum_of_cubes(1,3)
puts sum_of_cubes(1,5)
