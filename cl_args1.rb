#!/usr/bin/env ruby

ARGV.each_with_index do|a,i|
  puts "Argument #{i}: #{a}"
end.empty? and begin
                 puts "no command line args"
end
