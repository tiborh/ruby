#!/usr/bin/env ruby

puts "How many casts of the die?"
STDOUT.flush
num = gets
exit if num.nil?
num.chomp!
exit if num.empty?

abort "#{num} is not a valid number." unless num =~ /-?\d+/

num = num.to_i
for i in 0...num do
  print rand(6)+1,", "
end
puts ""
