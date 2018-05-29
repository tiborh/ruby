#!/usr/bin/env ruby

# taken over from RubyMonk:
# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/92-handling

def start_summer
  raise Exception.new("overheated!")
end

def starter_function
  start_summer
end

def start_starter_function
  starter_function
end

begin
  start_starter_function
rescue Exception => err
  puts "Inspect the exception: #{err.inspect}"
  puts "Print the exception error message: #{err}"
  puts "Full backtrace:",err.backtrace
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
