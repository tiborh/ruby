#!/usr/bin/env ruby

# a method stored as a variable:
a = 1.method("next")
puts "1.method(\"next\")"

# class: Method
puts "printed: #{a}"
puts "class: #{a.class}"

# you can call it:
puts "called: #{a.call}"

class Number
  attr_reader :a_num
  def initialize(x)
    @a_num = x
  end
  def add(b)
    a = @a_num
    if (b < 0 && a > 0)
      a,b = b,a
    end
    inverter = (b < 0 && a < 0) ? -1 : 1
    a = a * inverter
    b = b * inverter
    result = a
    b.times do
      result = result.next
    end
    return result * inverter
  end
  def to_s
    @a_num.to_s
  end
end

a = Number.new(-3)
am = a.method("add")

puts "our number: #{a.to_s}"
puts "saved method: #{am}"
puts "called with 3: #{am.call(3)}"
puts "called with -3: #{am.call(-3)}"
