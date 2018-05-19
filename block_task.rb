#!/usr/bin/env ruby

def calculate(a,b)
  yield(a,b)
end

require 'test/unit'
extend Test::Unit::Assertions

assert_equal(5,calculate(2, 3) { |a, b| a + b })
assert_equal(-1,calculate(2, 3) { |a, b| a - b })
assert_equal(6,calculate(2, 3) { |a, b| a * b })
