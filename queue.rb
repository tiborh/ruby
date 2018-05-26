#!/usr/bin/env ruby

class Queue
  def initialize
    @store = Array.new
  end
  
  def dequeue
    @store.pop
  end
  
  def enqueue(element)
    @store.unshift(element)
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
  q0 = Queue.new
  assert_equal(0,q0.size)
  q0.enqueue("")
  assert_equal(1,q0.size)
  q0.dequeue
  assert_equal(0,q0.size)
end
