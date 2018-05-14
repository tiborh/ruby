#!/usr/bin/env ruby

require_relative "family_modules"

include Wolfstein

rudy = Family.new("Rudy")
puts "Full name: #{rudy}"
puts "First name: #{rudy.fname}"
puts "Surname: #{rudy.sname}"

include Steinberg

rudy = Family.new("Rudy")
puts "Full name: #{rudy}"
puts "First name: #{rudy.fname}"
puts "Surname: #{rudy.sname}"

anne = Wolfstein::Family.new("Anne")
puts "Full name: #{anne}"
puts "First name: #{anne.fname}"
puts "Surname: #{anne.sname}"
