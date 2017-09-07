#!/usr/bin/env ruby

require_relative "greeter"

g1 = Greeter.new("pat")
g1.say_hi
g1.say_bye

puts "checking responsiveness to name and name="
puts g1.respond_to?("name")
puts g1.respond_to?("name=")
