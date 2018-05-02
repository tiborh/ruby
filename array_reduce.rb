#!/usr/bin/env ruby

a = (1..5).to_a
print a,"\n"
a_sum = a.reduce(:+)
print "sum: ",a_sum,"\n"
a_prod = a.reduce(:*)
print "product: ",a_prod,"\n"
