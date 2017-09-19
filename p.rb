#!/usr/bin/env ruby

# For each object, directly writes obj.inspect followed by a newline to
# the program's standard output.


S = Struct.new(:name, :state)
s = Array.new
s[0] = S['dave', 'TX']
s[1] = S['eve', 'NY']
p s
print s,"\n"

