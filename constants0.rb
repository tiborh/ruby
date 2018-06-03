#!/usr/bin/env ruby

module Argument
  Truth = "Yes, I am."
end

puts Argument::Truth

Argument::Truth = "Redefined constant"

puts Argument::Truth

def rewrite_history
  # Argument::Truth = "Attempt to redefine constant dynamically."
  puts "dynamic redefinition of a constant would lead to error"
end

rewrite_history

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
