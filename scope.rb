#!/usr/bin/env ruby

module Somewhere
  class Hidden
    $everywhere = "global love"
  end
end

def aMeth(one)
  return defined?(one).inspect
end

module Kata
  A = 5
  puts "A in Kata: #{A} (#{defined?(A).inspect})"
  module Dojo
    B = 9
    puts "B in Kata::Dojo #{B} (#{defined?(B).inspect})"
    A = 7
      puts "A in Kata::Dojo #{A} (#{defined?(A).inspect})"
    
    class ScopeIn
      def push
        ::A
      end
    end
  end
end

A = 10
puts "A in Main: #{A} (#{defined?(A).inspect})"

puts Kata::Dojo::ScopeIn.new.push
puts "'one' in a method: #{aMeth('one')}"
puts "$everywhere in Somewhere::Hidden: #{defined?($everywhere).inspect}"

