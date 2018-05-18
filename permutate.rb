#!/usr/bin/env ruby

def number_shuffle(number)
  number.to_s.split("").permutation.to_a.map {|x| x.join.to_i}
end

require 'test/unit'
extend Test::Unit::Assertions

assert_equal([123, 132, 213, 231, 312, 321],number_shuffle(123))

