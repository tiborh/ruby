#!/usr/bin/env ruby

puts "$* command line args (#{$*})"
begin
  3 / 0
rescue
  puts "$! last error message (#{$!})"
  puts "$@ location of last error (#{$@})"
end

atxt = "onek is not oney\nonet is not ones"
puts "$~ last regex match (#{$~}))" if atxt =~ /one./

puts "$0 name of the current script: (#{$0})"
puts "$$ process ID (#{$$})"
puts "(#{})"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
