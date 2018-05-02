#!/usr/bin/env ruby

a = (1..5).to_a
print a,"\n"
an_sum = a.inject { |sum,n| sum+n }
print "sum: ",an_sum,"\n"
an_prod = a.inject { |prod,n| prod*n }
print "product: ",an_prod,"\n"
