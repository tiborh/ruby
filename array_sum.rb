#!/usr/bin/env ruby

def compute(ary)
  return nil unless ary
  ary.map do |a,b|
    b ? a + b : a
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal([3,0,17],compute([[1,2],[-3,3],[8,9]]))
  assert_equal(nil,compute(nil))
  ar = [[4, 8], [15, 16], [23, 42]]
  assert_equal(ar.length,compute(ar).length)
  assert_equal([1,2,3],compute([1,2,3]))
  ar1 = [[4, 8, 3], [15, 16, 100], [23, 42, -54]]
  assert_equal(compute(ar),compute(ar1))
end
