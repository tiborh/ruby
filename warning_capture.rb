#!/usr/bin/env ruby

# source:
# https://stackoverflow.com/questions/12761995/capturing-warning-messages

require 'stringio'

old_stderr = $stderr
$stderr = StringIO.new
Foo = 1
Foo = 2 # generates a warning
puts $stderr.string # prints the warning
puts "#{$stderr}"
$stderr = old_stderr

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
