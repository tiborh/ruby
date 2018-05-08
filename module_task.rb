#!/usr/bin/env ruby

module Perimeter
  def perimeter()
    sides.inject { |sum, side| sum + side }
  end
end

class Rectangle
  include Perimeter

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

a = Rectangle.new(2,3)
b = Square.new(4)

puts a.perimeter
puts b.perimeter
