#!/usr/bin/env ruby

# source:
# https://www.devalot.com/articles/2008/09/ruby-singleton

foobar = Array.new

def foobar.size
  puts "foobar's super.size: #{super.size}" # four but don't know why
  puts "foobar's super: #{super}"
  "Hello World!"
end

puts "foobar.size: #{foobar.size}"  # => "Hello World!"
puts "foobar.class: #{foobar.class}" # => Array

bizbat = Array.new
puts "bizbat.size: #{bizbat.size}"  # => 0
puts "bizbat.class: #{bizbat.class}" # => Array

# Explanation:
# an anonymous "singleton class" comes between foobar and Array
# this anonymous class cannot be instantiated and does not appear for .class

# super can be used:
def foobar.size
  puts "foobar's super.size: #{super.size}"
  puts "foobar's super: #{super}"
  return super.size + 1
end

puts "foobar.size: #{foobar.size}"  # => "Hello World!"
puts "foobar.class: #{foobar.class}" # => Array
