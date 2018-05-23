#!/usr/bin/env ruby

class Item
  def inspect
    "Result of inspect"
  end
end

puts "put a new item:",Item.new
puts "put a new item to_s: ",Item.new.to_s
puts "p a new item: "
p Item.new

class Item
  def to_s
    "When to_s is defined"
  end
end

puts ""
puts "put a new item:",Item.new
puts "put a new item to_s: ",Item.new.to_s
puts "p a new item: "
p Item.new
