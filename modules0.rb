#!/usr/bin/env ruby

# how to break the capital constraint

fence = Module.new do
  def speak
    "I'm trapped!"
  end
end

class Sheep
  def speak
    "Baaaaahhhhh."
  end
end
  
sheep = Class.new do
  def speak
    "Baaaaahhhhh."
  end
end

puts "An instance of Sheep: #{Sheep.new}"
puts "'sheep' itself: #{sheep}"
puts "An instance of 'sheep': #{sheep.new}"
puts "'fence' itself: #{fence}"
s0 = sheep.new
puts "sheep instance speaks: #{s0.speak}"
s0.extend(fence)
puts "sheep instance after fence extension: #{s0.speak}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
