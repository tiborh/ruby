#!/usr/bin/env ruby

# source:
# https://www.devalot.com/articles/2008/09/ruby-singleton

# class methods are singleton classes
class A
  
  def self.added_one() 1 end
  
  class << self
    def added_two () 2 end
  end

  def added_three () 3 end

  def added_print_self
    puts "added_print_self in A:"
    print "\tmethods starting with 'added_': #{self.methods.grep(/^added_/)}\n"
    print "\tsingleton methods: #{self.singleton_methods}\n" # => ["two", "one"]
    print "\tclass of self: #{self.class}\n"             # => Class
    print "\tprinting self: #{self}\n"                    # => A
  end
  
end

if __FILE__ == $0

  a1 = A.new
  a1.added_print_self
  puts "displaying instance methods:"
  print "\tmethods in 'a1' instance starting with 'added_': #{a1.methods.grep(/^added_.+/)}\n"
  print "\tsingleton methods: #{A.singleton_methods}\n" # => []
  print "\tclass of a1: #{a1.class}\n"             # => A
  print "\tprinting a1: #{a1}\n"                    # => A

  puts "displaying class methods:"
  print "\tinstance_methods in 'A' starting with 'added_': #{A.methods.grep(/^added_.+/)}\n"
  print "\tsingleton methods in 'A': #{A.singleton_methods}\n" # => []
  
  
end
