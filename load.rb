#!/usr/bin/env ruby

# source:
# http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html

# load can be used for reload after possible change:

5.times do |i|
   File.open("/tmp/temp.rb","a") { |f|
     f.puts "module Temp\ndef Temp.var() #{i}; end\nend"
   }
   load "/tmp/temp.rb"
   puts Temp.var
end
