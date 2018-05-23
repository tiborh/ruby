#!/usr/bin/env ruby

def zen(*args)
  [args.first, args.last]
end

p zen(42, 43, 44, 45, 46)

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
