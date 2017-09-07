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

g1 = Greeter.new("pat")
g1.say_hi
g1.say_bye

puts("")
puts("Instance methods in the object:")
puts Greeter.instance_methods
