#!/usr/bin/env ruby

def greater_than(in_arr,num)
  dest = []
  for i in in_arr
    if (i > num)
      dest << i
    end
  end
  return dest
end

def greater_than2(in_arr,num)
  dest = []
  in_arr.each do |i|
    if (i > num)
      dest << i
    end
  end
  return dest
end


a = (1..10).to_a
print a,"\n"

dest = greater_than(a,4)
print dest,"\n"

dest = greater_than(a,5)
print dest,"\n"

