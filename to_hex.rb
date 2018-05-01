#!/usr/bin/env ruby

puts "give me a string:"
instr = gets.chomp
puts instr.gsub(/./) {|c| c.ord.to_s(16) + " "}
