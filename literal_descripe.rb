#!/usr/bin/env ruby

def describe(something)
  puts "I am a: #{something.class} and I look like: #{something}"
end

describe(1_024)
describe(1.2e-30)

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
