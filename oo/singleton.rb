#!/usr/bin/env ruby

# an example of a singleton object

require_relative "person"

p1 = Person.new("Zoe","f","zoe@mail.net")

puts "Marshal.dump(p1)"
puts Marshal.dump(p1)

def p1.print_data
  puts "id:     #{Person.count}"
  puts "name:   #{name}"
  puts "gender: #{gender}"
  puts "e-mail: #{email}"
end

p1.print_data

puts "instance_methods in Person starting with p: #{Person.instance_methods.grep(/^p.*/)}"
puts "methods in p1 starting with p: #{p1.methods.grep(/^p.*/)}"
puts "singleton methods of p1: #{p1.singleton_methods}"

begin
  Marshal.dump(p1)
rescue TypeError => err
  puts "TypeError has been caught: #{err}"
end
