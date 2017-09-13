#!/usr/bin/env ruby

class Empty
  def method_missing(m, *args, &block)
    puts "Name called: #{m}"
    puts "Args used: #{args}"
    puts "Block given: #{block}"
  end
end

e1 = Empty.new
e1.something
puts ""
e1.something_else("one","two")
puts ""
e1.one_more("alpha") { |a| puts a }
