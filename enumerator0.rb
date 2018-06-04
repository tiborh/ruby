#!/usr/bin/env ruby

a = (-1..4).to_a

puts "sample array: #{a}"
puts "the enumerator: #{a.each}"
print "the values * 2: "
a.each { |i| print i * 2,"," }
puts ""

b = a.each
puts "enumerator in variable: #{b}"
print "the values * 3: "
b.each { |i| print i * 3,"," }
puts ""

c = a.each_with_index
puts "the indexed enumerator: #{c}"
p c.select { |e,i| e < i }

# this one is still to see how it works
class Array
  def map_with_index(&block)
    self.each_with_index.map(&block)
  end
end

a.map_with_index.each {|e,i| print i, ": ", e,", "}
puts ""

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
