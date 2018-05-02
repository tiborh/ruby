#!/usr/bin/env ruby

a = (1..5).to_a
print a,"\n"
avg = a.reduce(:+) / a.length.to_f
print "average: #{avg}\n" 
