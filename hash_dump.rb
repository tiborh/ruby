#!/usr/bin/env ruby

require_relative("hash_reader")
require 'yaml'

names = hash_reader()
fn = "hash.dump"
fh = File.open(fn,"w")
fh.print(YAML.dump(names))
fh.close

puts "data: #{names}"
puts "data written into: #{fn}"

fh = File.open(fn,"r")
data = YAML.load(fh.read)
fh.close
puts "Data retrieved from file: #{data}"

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal(names,data)
end
