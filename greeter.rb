#!/usr/bin/env ruby

class Greeter
  def initialize(name = "World")
    @name = name.capitalize
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions
  g1 = Greeter.new("Abe")
  assert_false g1.respond_to?("name")
  assert_false g1.respond_to?("name=")
end
