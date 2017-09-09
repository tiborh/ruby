#!/usr/bin/env ruby

s1 = "aleph bet  gimel   dalet"
puts "The default of split is to split by space: \s+."
print s1.split,"\n"
print s1.split(/\s+/),"\n"
print "aleph".split,"\n"
puts "empty string splits down to characters"
print "aleph".split(""),"\n"
