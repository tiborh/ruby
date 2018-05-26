#!/usr/bin/env ruby

class Queue
  def initialize(size)
    @limit = size
    @store = Array.new
  end
  
  def dequeue
    return nil if empty?
    return @store.pop
  end
  
  def enqueue(element)
    return nil unless element
    return nil if full?
    @store.unshift(element)
    self
  end
  
  def size
    @store.size
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
  q0 = Queue.new(1)
  assert_equal(0,q0.size)
  q0.enqueue("")
  assert_equal(1,q0.size)
  q0.dequeue
  assert_equal(0,q0.size)

  q1 = Queue.new(5)
  q1.enqueue("a").enqueue("b").enqueue("c")
  assert_equal(3,q1.size)
  assert_equal("a",q1.dequeue)
  q1.enqueue("d").enqueue("e")
  assert_not_nil(q1.enqueue("f"))
  assert_equal(5,q1.size)
end
