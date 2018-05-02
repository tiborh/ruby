#!/usr/bin/env ruby

a = ("a".."h").to_a
print a,"\n"
a.shift
print a,"\n"
a.pop
print a,"\n"
a.delete("c")
print a,"\n"
puts a.delete("z") { "not found" }
a.delete_at(2)
print a,"\n"

b = (1..10).to_a
print b,"\n"
b.delete_if { |item| item % 2 == 0 }
print b,"\n"
