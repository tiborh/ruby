#!/usr/bin/env ruby

require_relative("hash_reader")

names = hash_reader()

puts "keys with built-in .keys:   #{names.keys}"

def hash_keys(hash)
  hash.map {|k,v| k}
end

puts "keys with hash_keys method: #{hash_keys(names)}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
