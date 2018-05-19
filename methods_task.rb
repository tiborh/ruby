#!/usr/bin/env ruby

def calculate(*args)
  inputs = []
  op = {}
  args.each do |x| 
    #puts "arg: #{x}"
    if x.is_a?(Hash)
      op = x
    else
      inputs << x
    end
  end
  #puts("inputs: #{inputs}; op: #{op}")
  if op[:subtract]
    subtract(*inputs)
  else 
    add(*inputs)
  end
end

def add *inputs
  inputs.inject(0) { |sum,num| sum + num }
end

def subtract *inputs
  inputs.inject(inputs.shift) { |sum,num| sum - num }
end

require 'test/unit'
extend Test::Unit::Assertions

assert_equal(9,add(4,5))
assert_equal(-5,add(-10, 2, 3))
assert_equal(0,add(0, 0, 0, 0))
assert_equal(-1,subtract(4, 5))
assert_equal(-15,subtract(-10, 2, 3))
assert_equal(10,subtract(0, 0, 0, 0, -10))
assert_equal(9,calculate(4,5))
assert_equal(9,calculate(4,5,add:true))
assert_equal(-5,calculate(-10, 2, 3, add: true))
assert_equal(0,calculate(0, 0, 0, 0, add: true))
assert_equal(-1,calculate(4, 5, subtract: true))
assert_equal(-15,calculate(-10, 2, 3, subtract: true))
assert_equal(10,calculate(0, 0, 0, 0, -10, subtract: true))
