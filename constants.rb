#!/usr/bin/env ruby

# source:
# http://rubylearning.com/satishtalim/ruby_constants.html

puts "Constantness is not enforced, only warned about (allcaps are handled as constant)."
A_CONST = 1
A_CONST = 2

puts "\nIf the constant is an object, the internal state can be changed."
B_CONST = "aleph"
puts "B_CONST: #{B_CONST}"
B_CONST[0] = "b"
puts "B_CONST: #{B_CONST}"

puts "\nConstants cannot be defined in methods"

puts "\nReferring to constants"
OUTER_CONST = 99  

puts "\nthe example class:"

const_class = <<EOF
class Const  
    def get_const  
      CONST  
    end  
    CONST = OUTER_CONST + 1  
end
EOF
print const_class,"\n"
eval(const_class)

puts "Const.new.get_const: #{Const.new.get_const}"
puts "Const::CONST: #{Const::CONST}"
puts "::OUTER_CONST: #{::OUTER_CONST}"
class Const
  NEW_CONST = 123
end
puts "after adding constant to class Const::NEW_CONST: #{Const::NEW_CONST}"
