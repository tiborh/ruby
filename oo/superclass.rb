#!/usr/bin/env ruby

class A
  def initialize(name="A")
    puts "'#{name}' has been instantiated."
  end
end

class B < A
  def initialize(name="B")
    super(name)
  end
end

a = A.new()
puts "A's superclass: #{A.superclass}."
b = B.new()
puts "B's superclass: #{B.superclass}."

