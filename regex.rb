#!/usr/bin/env ruby

puts "simplest, searches in string:"
puts "some matching content"[/match/]

puts "when nothing is found:"
print "some matching content"[/miss/],"(nil not printed)\n"

puts "match examines the first match:"
print '"abbccc az"[/az*/]: ',"abbccc az"[/az*/],"\n"
print '"bbccc az"[/az*/]: ',"bbccc az"[/az*/],"\n"
