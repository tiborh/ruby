#!/usr/bin/env ruby

# source:
# https://www.devalot.com/articles/2008/09/ruby-singleton

module Foo
  def foo
    "Hello World!"
  end
end

foobar = []
puts "No singleton_methods: #{foobar.singleton_methods}"

# a singleton class is created with "extend"
foobar.extend(Foo)
foobar.singleton_methods # => ["foo"]
puts "after the 'foobar.extend(Foo)':"
puts "singleton_methods: #{foobar.singleton_methods}" # => ["foo"]
