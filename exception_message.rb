#!/usr/bin/env ruby

class InfinityError < StandardError
end

ie = InfinityError.new("infinity error was raised")

begin
  raise ie if 1.0 / 0.0
rescue InfinityError => error
  p error.message
end


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
