#!/usr/bin/env ruby

File.open("file_rewrite.txt", "w+") do |f|
  f.write("Bar: ")
  f.write(rand(1000).to_s)
  f.write("\n")
  f.rewind
  f.read
end

