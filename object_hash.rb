#!/usr/bin/env ruby

p 1.hash
p "Hello".hash
p "Hello!".hash
p [1,2,3].hash
p({:x => 1, :y => 2}.hash)

class Item
  def initialize(name)
    @name = name
  end
end

p Item.new("ruby").hash


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
