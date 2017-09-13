#!/usr/bin/env ruby

# a simple example of dynamic ruby:
val1 = rand(100)+1
val2 = rand(100)+1
ops = %w|+ - * / ** %|
op1 = ops[rand(ops.length)]
op_str = val1.to_s + " " + op1 + " " + val2.to_s
puts(op_str + " == " + eval(op_str).to_s)
