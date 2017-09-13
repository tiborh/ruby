#!/usr/bin/env ruby

require_relative "person"

p1 = Person.new("Zoe","f","zoe@mail.co.uk")

def p1.print_data
  puts "id:     #{Person.count}"
  puts "name:   #{name}"
  puts "gender: #{gender}"
  puts "e-mail: #{email}"
end

p1.print_data
