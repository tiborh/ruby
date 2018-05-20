#!/usr/bin/env ruby

puts lambda{}
puts Proc.new{}

def lambdm
 lambda { return "we just returned from the block" }.call
 return "we just returned from the called method"
end

puts lambdm

def procm
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the called method"
end

puts procm

# short calls
slamb = ->(a, b) { a + b }
puts slamb.call(2, 3)

sproc = proc { |a, b| a + b }
puts sproc.call(2, 3)
  
end
