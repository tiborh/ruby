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
      @item_name == other_item.item_name and
      @qty == other_item.qty
    end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal(Item.new("abcd",1),Item.new("abcd",1))
  assert_not_equal(Item.new("abcd",2),Item.new("abcd",1))
end
