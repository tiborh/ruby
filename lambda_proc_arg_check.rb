#!/usr/bin/env ruby

l = lambda {|x, y| "#{x}#{y}"}

puts "lambda called (l.call(\"foo\",\"bar\")): #{l.call("foo","bar")}"
puts "lambda if an argument is omitted:"
begin
  puts l.call("foo")
rescue ArgumentError => err
  puts "Argument Error has been caught:\n#{err}"
end

puts "\nSame as above but with proc:"
p = proc {|x, y| "#{x}#{y}"}
puts p.call("foo","bar")
puts p.call("foo")              # no error
puts "Trying with 3 args:"
puts p.call("foo","bar","dash") # no error

