#!/usr/bin/env ruby

module Foo
  def self.included(class_name)
    puts "#{self.class} #{self} has been included in class #{class_name}"
  end
end

class Bar
  include Foo
end


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
