#!/usr/bin/env ruby
# coding: utf-8

# .next method to increment variable:
def print_list(array, first = 1)
  counter = first
  array.each do |item|
    puts "#{counter}. #{item}"
    counter = counter.next
  end
end

曜日 = ["月","火","水","木","金","土","日"]

puts "曜日："
print_list(曜日)

# added advantage:

puts "曜日："
print_list(曜日,"a")
