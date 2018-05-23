#!/usr/bin/env ruby

class Item
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
end

item = Item.new("a",1)

puts "puts:"
puts item
puts "p:"
p item

class Item
  def to_s
    "#{@item_name}: #{@qty}"
  end
end

item = Item.new("a",1)
puts ""
puts "puts:"
puts item
puts "p:"
p item


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
