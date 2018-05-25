#!/usr/bin/env ruby

def rand_int_array(asize = 10, maxnu = 100)
  outar = []
  asize.times { outar << rand(maxnu) }
  return outar
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  a0 = rand_int_array(5,10)
  assert_equal(5,a0.count)
  assert_equal(5,a0.size)
  assert_equal(5,a0.length)

  a1 = [4, 8, 15, 16, 23, 42]
  assert_equal(4,a1.count { |e| e % 2 == 0 }) # true for how many?
  assert_equal(2,a1.index(15)) # first occurrence

  a2 = [4, 8, 15, 16, 23, 42]
  a3 = [4, [8], [15], [16, [23, 42]]]
  assert_not_equal(a2,a3)
  assert_equal(a2,a3.flatten)
  assert_equal(a2,a3.flatten(2)) # flatten out two levels
  assert_not_equal(a2,a3.flatten(1)) # only one level is flattened out (of the three

  a4 = [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil]
  assert_equal(10,a4.length)
  assert_equal(6,a4.compact.length)    # nil elems taken out

  assert_equal([[4, 42], [8, 23], [15, 16], [16, 15], [23, 8], [42, nil]],
               [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])) # element by element merge
end
