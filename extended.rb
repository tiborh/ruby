#!/usr/bin/env ruby

module Foo
  def self.extended(base)
    puts "Class #{base} has been extended with module #{self} !"
  end
end

class Bar
  extend Foo
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
