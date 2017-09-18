#!/usr/bin/env ruby

# source:
# https://www.sitepoint.com/closures-ruby/

p = proc {|x, y| "#{x}#{y}"}

puts "ways to call:"
puts "1. p.call(args)"
puts p.call("foo","bar")
puts "2. p::(args)"
puts p::("foo","bar")
puts "3. p.(args)"
puts p.("foo","bar")
puts "4. p[args]"
puts p["foo","bar"]
