#!/usr/bin/env ruby

def f(ar, blck)
  return ar.select &blck
end

an_array = (1..10).to_a
a_block = lambda {|n| n.even?}
puts "#{f(an_array,a_block)}"

F2 = lambda do |array, &block|
 array.select(&block)
end

puts "#{F2.call(an_array,&a_block)}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal([1,3],f([1, 2, 3, 4], lambda {|number| number.odd? }) )
  assert_equal([1,3],f([1, 2.0, 3, 4.0], lambda {|number| number.integer? }) )
  assert_equal([2,4],F2.call([1, 2, 3, 4], &lambda {|number| number.even? }) )
  assert_equal([1,3],F2.call([1, 2.0, 3, 4.0], &lambda {|number| number.integer? }) )
end
