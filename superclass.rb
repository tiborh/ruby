#!/usr/bin/env ruby

def is_ancestor?(klass, subclass)
  ans = false
  parent = subclass.superclass
  while (parent != nil)
    if parent == klass
      ans = true
      break
    end
    parent = parent.superclass
  end
  return ans
end

puts is_ancestor?(Numeric,Integer)

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_true(is_ancestor?(Numeric, Integer))
  assert_true(is_ancestor?(Numeric, Float))
  assert_false(is_ancestor?(Numeric, String))
  assert_true(is_ancestor?(Object, String))
  assert_true(is_ancestor?(Object, Integer))
  assert_false(is_ancestor?(Integer,Object))
end
