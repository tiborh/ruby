#!/usr/bin/env ruby

# simplest lambda
l = lambda { "Something" }

# class
puts ("class of lambda: #{l.class}")

# Convention:
#   {} for one-liners
#   do ... end for multiline ones
# .call is used same way as with methods:
puts (".call: #{l.call}")

# to call with argument
l = lambda do |the_input|
  if the_input == "password"
    return("*" * 8)
  else
    return "not the password"
  end
end

puts l.call("not")
puts l.call("password")
