#!/usr/bin/env ruby

class Item
  attr_reader :item_name, :qty
  
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  
  def to_s
    "Item (#{@item_name}, #{@qty})"
  end

  def ==(other_item)
    @item_name == other_item.item_name && @qty == other_item.qty
  end
end

p Item.new("abcd", 1).hash

puts "eql and hash are not defined, so all three are unique:"
items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
p items.uniq

class Item
  # hash and eql? can determine uniqueness
  def hash
    puts "#hash invoked"
    self.item_name.hash ^ self.qty.hash # XOR
  end

  # eql? normally calls ==
  def eql?(other_item)
    puts "#eql? invoked"
    self == other_item
  end
end

p Item.new("abcd", 1).hash

puts "after eql and hash have been defined, only one appears as unique"
items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
p items.uniq

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
