#!/usr/bin/env ruby

def extract_first_name(name)
  first = name.split(" ").first
  puts "extracted first name #{first}"
  first
end

def casual_names(names)
  casual = names.map {|name| extract_first_name(name) }
  puts "captured casual names #{casual}"
  casual
end

begin
  puts casual_names(["Yehuda Katz", nil, "Why the lucky stiff"])
rescue NoMethodError => err
  puts "Exception caught: #{err}"
end
  
puts "You would not get here unless exception has been caught."

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
