#!/usr/bin/env ruby

# simplest object:
a = Object.new

puts "methods of an Object:"
print a.methods.sort,"\n"

# an empty object:
class Rectangle
end

puts "methods of an empty object:"
print Rectangle.methods.sort,"\n"

# a minimally meaningful object:
class Rectangle
  attr_accessor :height,:width
  def initialize(a,b)
    @height = a
    @width = b
  end
  def perimeter
    2*@height + 2*@width
  end
  def area
    @height * @width
  end
  def to_s
    return "#{@height.to_s} by #{@width.to_s}"
  end
end

c = Rectangle.new(200,300)
puts "height of the rectangle: #{c.height}"
puts "width of the rectangle:  #{c.width}"
puts "perimeter: #{c.perimeter}"
puts "area: #{c.area}"

c.height = 50
c.width = 100

puts "After change: #{c.to_s}"
puts "perimeter: #{c.perimeter}"
puts "area: #{c.area}"

