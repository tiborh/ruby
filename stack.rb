#!/usr/bin/env ruby

class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    @store.push(element)
    self
  end
  
  def size
    @store.size
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  s0 = Stack.new
  assert_equal(0,s0.size)
  assert_equal(nil,s0.pop)

  s0.push("1")
  assert_equal(1,s0.size)
  assert_equal("1",s0.pop)
  assert_equal(0,s0.size)
end
