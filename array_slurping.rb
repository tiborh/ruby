#!/usr/bin/env ruby

a = (1..5).to_a

def zen(a, b)
	a + b
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  b,c,d = [1,2]
  assert_equal(nil,d)
  b,c,*d = a
  assert_equal([3,4,5],d)
  *b,c,d = a
  assert_equal([1,2,3],b)
  b,*c,d = a
  assert_equal([2,3,4],c)
  a = *(1..10)
  assert_equal(Array,a.class)
  assert_equal(10,a.length)
  z = *"zen"
  assert_equal(Array,z.class)
  assert_equal(1,z.length)
  assert_equal(42,zen(*[41, 1]))
end
