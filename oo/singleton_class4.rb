#!/usr/bin/env ruby

# source:
# https://www.devalot.com/articles/2008/09/ruby-singleton

foobar = []
puts "No singleton_methods: #{foobar.singleton_methods}"

foobar.instance_eval <<EOT
  def foo
    "Hello World!"
  end
EOT
  
foobar.singleton_methods # => ["foo"]
puts "after the 'instance_eval <<EOT...':"
puts "singleton_methods: #{foobar.singleton_methods}" # => ["foo"]
