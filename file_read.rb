#!/usr/bin/env ruby

def file_inspect(fn)
  mode = "r+"
  file = File.open(fn, mode)
  puts file.inspect
  puts file.read
  file.close
end

file_inspect("io.txt")
hs = "hash_source.txt"
file_inspect(hs)

fn = "test.txt"
fh = File.open(fn,"w")
fh.puts "Call me Ishmael."
fh.close
file_inspect(fn)

# fixed-length read
file = File.open(hs, "r+")

puts "full file:"
p file.read
file.rewind # try commenting out this line to see what happens!
            # can you guess why this happens?

buffer = ""
puts "only fixed length is read:"
p file.read(23, buffer)
p buffer

file.close
