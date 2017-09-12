#!/usr/bin/env ruby
# coding: utf-8

# for simple examples, where yield is used as a substitute for Perl's blocks, see loops.rb and blocks.rb

# .next method to increment variable:
def print_list(array, first = 1)
  counter = first
  array.each do |item|
    puts "#{yield counter} #{item}"
    counter = counter.next
  end
end

曜日 = ["月","火","水","木","金","土","日"]

# normal:
puts "without anything extra"
print_list( 曜日 ) { |n| "#{n}"}

# formatted counter:
puts "<> output"
print_list( 曜日, 23 ) { |n| "<#{n}>"}

# tens output
puts "basic style"
print_list( 曜日 ) { |n| "[#{10*n}]"}
