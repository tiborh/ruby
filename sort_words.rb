#!/usr/bin/env ruby

def sort_string(string)
  string.downcase.split.sort.join(" ")
end

def sort_string_by_length(string)
  string.split.sort{|a,b| a.length <=> b.length}.join(" ")
end

s1 = "Sort words in a sentence"
puts sort_string(s1)
puts sort_string_by_length(s1)
s2 = 'Awesome I am'
puts sort_string(s2)
puts sort_string_by_length(s2)
