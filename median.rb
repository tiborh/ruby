#!/usr/bin/env ruby

def median(*list)
  list = list[0]
  return nil if list.length == 0
  list.sort!
  return list[list.length/2] if list.length % 2 == 1
  while list.length > 2
    list.shift
    list.pop
  end
  return (list[0] + list[1]) / 2.0
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  a = []
  # assert_equal(nil,median(a))
  assert_equal(nil,median(a))
  assert_equal(2,median([1,2,3]))
  assert_equal(2.5,median([2, 3, 1, 4]))
end
