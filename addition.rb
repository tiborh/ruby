#!/usr/bin/env ruby

# to show how operators are defined (or overridden)
class Num
  def initialize(n)
    @num = n
  end
  def +(y)
    return @num + y
  end
  def ==(y)
    return @num == y
  end
  def to_s
    return @num.to_s
  end
end

a = Num.new(3)
puts "#{a} + 3 == #{a+3}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:

end
