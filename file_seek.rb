#!/usr/bin/env ruby

hs = "hash_source.txt"
p File.read(hs)

File.open(hs) do |f|
  f.seek(20, IO::SEEK_SET)
  p f.read(10)
end
