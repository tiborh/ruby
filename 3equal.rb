#!/usr/bin/env ruby

# === vs ==
# official name: case equality operator

def compops(arg1,arg2)
  puts "\n#{arg1.class} #{arg2.class}"
  puts "#{arg1} == #{arg2}: #{arg1 == arg2}"
  puts "#{arg1} === #{arg2}: #{arg1 === arg2}"
end

compops(3,3)
compops("one","one")
compops(3,Integer)
compops(Integer,3)
compops(/a.+/,"and")
compops(/el+/,"hello")
compops("and",/a.+/)
compops("and","and")
compops((1..3),2)
compops(2,(1..3))
