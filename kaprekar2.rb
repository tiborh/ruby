#!/usr/bin/env ruby

if (ARGV.length != 2)
  puts "Usage: #{$0} from_integer to_integer"  
  exit(1)
end

a = ARGV[0].to_i
b = ARGV[1].to_i

def kaprekar?(k)
  sqvals = (k.to_i**2).to_s.scan(/\w/)
  last_vals = sqvals.pop(k.to_s.length)
  k.to_i == sqvals.join.to_i + last_vals.join.to_i
end

(a..b).each do |num|
  print "#{num}: \t true \t (#{num**2})\n" if kaprekar?(num)
end

if ARGV.length == 0
  require 'test/unit'
  extend Test::Unit::Assertions

  assert_true kaprekar?(9)
  assert_false kaprekar?(46)
  assert_true kaprekar?(55)
  assert_false kaprekar?(90)
  assert_true kaprekar?(297)
  assert_true kaprekar?(703)
end
