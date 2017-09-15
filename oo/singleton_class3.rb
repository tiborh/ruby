#!/usr/bin/env ruby

# source:
# https://www.devalot.com/articles/2008/09/ruby-singleton

foobar = []                     # and instance of Array

puts "No singleton_methods: #{foobar.singleton_methods}"

# creation of a singleton class
class << foobar
  def foo
    "Hello World!"
  end
end

puts "after the 'class << foobar' definition:"
puts "singleton_methods: #{foobar.singleton_methods}" # => ["foo"]
