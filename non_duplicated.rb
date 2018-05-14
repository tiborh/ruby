#!/usr/bin/env ruby

def non_duplicated_values(values)
  outa = []
  values.each do |val|
    if values.count(val) ==1
      outa << val
    end
  end
  return outa
end

puts "#{non_duplicated_values([1,2,2,3,3,4,5])}"
