#!/usr/bin/env ruby

# taken over from RubyMonk:
# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/92-handling

def start_summer
  raise Exception.new("overheated!")
end

begin
  start_summer
rescue Exception => err
  puts "Inspect the exception: #{err.inspect}"
  puts "Print the exception error message: #{err}"
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
