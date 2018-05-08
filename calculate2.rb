#!/usr/bin/env ruby

def calculate(*args)
  if args.index({:add=>true})
    args.pop
    return add(*args)
  elsif args.index({:subtract=>true})
    args.pop
    return subtract(*args)
  else
    return add(*args)
  end
end

def add(*args)
  retval = 0
  args.each { |val| retval += val }
  return retval
end

def subtract(*args)
  args.inject { |retval, val| retval -= val }
end

puts "1,2 ",calculate(1,2)
puts "1,2,3 ",calculate(1,2,3)
puts "1,2,add:true ",calculate(1,2,add: true)
puts "1,2,4,add:true ",calculate(1,2,4,add: true)
puts "1,2,subtract:true",calculate(1,2,subtract: true)
