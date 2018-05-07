#!/usr/bin/env ruby

# inject:
# Combines all elements of enum by applying a binary operation,
# specified by a block or a symbol that names a method or operator.

# in *args, "*" is called the "splat operator"
# the splat operator can convert between an array and an argument list

# inject(argument) can specify the initial value
# no argument: the first element of the enumerated list is used

def add(*numbers)
  numbers.inject { |sum, number| sum + number }
end

def add0(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

puts "no arg:"
puts "\t #{add().class}"
puts "\t #{add0()}"

puts "one arg:"
puts "\t #{add(1)}"
puts "\t #{add0(1)}"

puts "two args:"
puts "\t #{add(1,2)}"
puts "\t #{add0(1,2)}"

the_args = (1..10).to_a
puts "ten args:"
puts "\t #{the_args}"
puts "\t #{add(*the_args)}"
puts "\t #{add0(*the_args)}"
