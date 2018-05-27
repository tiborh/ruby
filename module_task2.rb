#!/usr/bin/env ruby

# your code here
module Math
  def self.square(x)            # self is needed to add to the core Math module
    x * x
  end
end

puts Math.square(6)

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
