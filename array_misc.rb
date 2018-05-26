#!/usr/bin/env ruby
# coding: utf-8

def rand_int_array(asize = 10, maxnu = 100)
  outar = []
  asize.times { outar << rand(maxnu) }
  return outar
end

def combinations(ar)
  ap = ar.product(ar)
  ap.delete_if { |i| i[0] == i[1] }
  return ap
end

def unique_combinations(ar)
  ap = ar.product(ar)
  ap.delete_if { |i| i[0] == i[1] }
  aout = ap.map { |i| i.sort! }
  return aout.uniq
end


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # the length of an array
  a0 = rand_int_array(5,10)
  assert_equal(5,a0.count)
  assert_equal(5,a0.size)
  assert_equal(5,a0.length)

  # count and index
  a1 = [4, 8, 15, 16, 23, 42]
  assert_equal(4,a1.count { |e| e % 2 == 0 }) # true for how many?
  assert_equal(2,a1.index(15)) # first occurrence

  # flatten
  a2 = [4, 8, 15, 16, 23, 42]
  a3 = [4, [8], [15], [16, [23, 42]]]
  assert_not_equal(a2,a3)
  assert_equal(a2,a3.flatten)
  assert_equal(a2,a3.flatten(2)) # flatten out two levels
  assert_not_equal(a2,a3.flatten(1)) # only one level is flattened out (of the three

  # compact
  a4 = [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil]
  assert_equal(10,a4.length)
  assert_equal(6,a4.compact.length)    # nil elems taken out

  # zip
  assert_equal([[4, 42], [8, 23], [15, 16], [16, 15], [23, 8], [42, nil]],
               [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])) # element by element merge

  # slice
  assert_equal(15,a2.slice(2))
  assert_equal([15, 16, 23, 42],a2.slice(2..5))
  assert_equal([23, 42],a2.slice(-2..-1))

  # join
  assert_equal("4815162342",a2.join)
  assert_equal("4, 8, 15, 16, 23, 42",a2.join(", "))

  # pack
  assert_equal("±⌒",[177, 8978].pack("UU"))
  assert_equal("±⌒",[177, 8978].pack("U*"))

  # step to array
  assert_equal([1, 4, 7, 10, 13, 16],1.step(17,3).to_a)

  # product
  a = (1..2).to_a
  ap = [[1, 1], [1, 2], [2, 1], [2, 2]]
  assert_equal(ap,a.product(a))

  b = (1..3).to_a
  bc = [[1, 2], [1, 3], [2, 1], [2, 3], [3, 1], [3, 2]]
  assert_equal(bc,combinations(b))

  a = [1,2,3]
  b = [4,5,6]
  c = [7,8,9]
  abc = []
  abc << a << b << c
  abc_rotated = [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  assert_equal(abc_rotated,abc.transpose)
  
end
