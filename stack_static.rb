#!/usr/bin/env ruby

class StaticStack
  attr_reader :limit
  
  def initialize(slimit)
    @store = Array.new
    @limit = slimit
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    return nil if full?
    return nil unless element
    @store.push(element)
    self
  end
  
  def size
    @store.length
  end

  def look
    return nil if empty?
    return @store[-1]
  end

  def ==(other_stack)
    size == other_stack.size
  end
  
  private
  
  def full?
    size == @limit
  end
  
  def empty?
    size == 0
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  s1 = StaticStack.new(1)
  assert_equal(1,s1.limit)
  assert_equal(0,s1.size)
  assert_equal(nil,s1.pop)

  assert_equal(nil,s1.push(nil))
  
  s1.push("1")
  assert_equal(1,s1.size)
  assert_equal("1",s1.pop)
  assert_equal(0,s1.size)

  s1.push("1")
  assert_equal(nil,s1.push("2"))

  s2 = StaticStack.new(5)
  s2.push("1").push("2").push("3")
  assert_equal(3,s2.size)

  s3 = StaticStack.new(5)
  s3.push("a").push("b").push("c")
  assert_equal(s2,s3)
end
