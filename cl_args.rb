#!/usr/bin/env ruby

ARGV.each do|a|
  puts "Argument: #{a}"
end.empty? and begin
                 puts "no command line args"
end
