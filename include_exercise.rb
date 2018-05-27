#!/usr/bin/env ruby

module Foo
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
  def self.included(class_name)
    class_name.extend ClassMethods
  end
end

class Bar
  include Foo
end

puts Bar.guitar

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
