#!/usr/bin/env ruby

# source:
# https://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/

# official name: array expansion operator

# natural is the last position:
def say(what, *towhom)
  towhom.each{|to| puts "#{to}, #{what}"}
end

# with strings:
say "Hello", "Alice", "Bob", "Carl"
# say with no arguments results in the following error message:
# ArgumentError: wrong number of arguments (given 0, expected 1+)

# splat can also help when input is in an array
say *%w|Hello Alice Bob Carl|

# in first position:
def args_and_opts(*args, opts)
  puts "arguments: #{args}"
  puts "options: #{opts}"
end

args_and_opts 1,2,3, :a=>5, :b=>6

# to discard rest of the args:
def print_pair(a,b,*)
  puts "#{a} and #{b}"
end

print_pair 1,2,3,:cake,7
# without splat:
# print_pair': wrong number of arguments (given 5, expected 2) (ArgumentError)

def add_pair(a,b)
  return a + b
end

puts "adding numbers from an array:"
puts add_pair *[1,2]

# mixed declaration:
ar = [1,2,3,4]
print "input array: ",ar,"\n"
first, *list = ar
print "first: ",first,", list: ",list,"\n"
*list,last = ar
print "list: ",list,", last: ",last,"\n"
first,*centre,last = ar
print "first: ",first,", centre: ",centre,", last: ",last,"\n"

# a funny example:
# Unquote a String (don't do this)
_, *unquoted, _ = '"quoted"'.split(//)
puts unquoted.join

# array coercion:
a = *"Hello world!"
puts "string to array:"
print "\ta: ",a,"\n"

a = *(1..3)
puts "range to array:"
print "\ta: ", a,"\n"

a = *[1,2,3]
puts "the unnecessary coercion"
print "\ta: ", a,"\n"

# a task
def introduction(age, gender, *names)
  outstr = "Meet"
  names.each { |a_nam| outstr += " " + a_nam}
  outstr += ", who is " + age.to_s + " and "
  outstr += gender.to_s
  return outstr
end
