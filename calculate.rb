#!/usr/bin/env ruby

def calculate(num1, num2, opts = {})
  return num1 + num2 if opts[:add]
  return num1 * num2 if opts[:multiply]
  return num1 - num2 if opts[:subtract]
  return (num1 / num2).round(opts[:precision]) if opts[:divide]
  return nil
end

a = 2.0
b = 3
puts "numbers: #{a}, #{b}"
puts "add: #{calculate(a,b,add: true)}"
puts "subtract: #{calculate(a,b,subtract: true)}"
puts "multiply: #{calculate(a,b,multiply: true)}"
puts "divide: #{calculate(a,b,divide: true,precision: 2)}"
