#!/usr/bin/env ruby

fn = "disguise.txt"

require 'pathname'
pn = Pathname.new(fn)
if (!pn.exist?)
  fh = File.open(fn,"w")
  fh.close
end

File.open(fn, "r+") do |f| # to support both read and write
  f.truncate(0)                 # clear previous content
  f.print("Bar")                # no \n
  f.rewind
  puts f.read
end
