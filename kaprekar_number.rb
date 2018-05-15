#!/usr/bin/env ruby

# elegant but wrong e.g. 297 should be true
def kaprekar_wrong?(k)
  k.to_i == (k.to_i**2).to_s.scan(/.{1,#{k.to_s.length}}/).map { |nstr| nstr.to_i }.inject(0) { |sum,n| sum+n }
end

def kaprekar?(k)
  sqvals = (k.to_i**2).to_s.scan(/\w/)
  last_vals = sqvals.pop(k.to_s.length)
  k.to_i == sqvals.join.to_i + last_vals.join.to_i
end

ARGV.each do |num|
  print "#{num}: #{kaprekar?(num)}\n"
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
