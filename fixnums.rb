#!/usr/bin/env ruby

def array_of_fixnums?(array)
  retval = true
  array.each do |it|
    if (it.class != Fixnum)
      retval = false  
    end
  end  
  return   retval
end

puts array_of_fixnums?((1..4).to_a)
puts array_of_fixnums?( [1,2,3.1] )
