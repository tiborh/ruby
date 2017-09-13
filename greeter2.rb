#!/usr/bin/env ruby

require_relative "greeter"

# add an accessor
class Greeter
  attr_accessor :name
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  g1 = Greeter.new("andy")
  # puts g1.name
  g1.say_hi
  g1.say_bye

  assert_true g1.respond_to?("name")
  assert_true g1.respond_to?("name=")
  
  puts "checking responsiveness to name and name="
  puts g1.respond_to?("name")
  puts g1.respond_to?("name=")

  g1.name = "Betty"
  # puts g1.name
  g1.say_hi
  g1.say_bye
end
