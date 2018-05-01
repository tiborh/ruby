#!/usr/bin/env ruby

puts "Default format: ",Time.now
puts "Month only:", Time.now.strftime("%B")
puts "English format: ", Time.now.strftime("%d %B %Y")

