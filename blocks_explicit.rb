#!/usr/bin/env ruby

# explicit block
def calc(a,b,&calc_block)       # &block is the declaration of an explicit block
  calc_block.call(a,b)
end

# implicit block
def calculation(a, b)
  yield(a, b) # yield calls an implicit (unnamed) block 
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal(11,calc(1, 10) { |a, b| a + b })
  add = lambda {|a, b| a + b} # lambda as an implicit block
  assert_equal(0,calc(1, -1, &add))
end
