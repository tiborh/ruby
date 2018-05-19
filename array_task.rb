#!/usr/bin/env ruby

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      @array.inject(initial_value) { |sum,num| sum + yield(num) }
    else
      @array.inject(initial_value) { |sum,num| sum + num }
    end
  end
end

require 'test/unit'
extend Test::Unit::Assertions

my_array = MyArray.new([1, 2, 3])

assert_equal(6,my_array.sum)
assert_equal(16,my_array.sum(10))
assert_equal(14,my_array.sum(0) { |n| n**2 })
