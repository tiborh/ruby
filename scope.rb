#!/usr/bin/env ruby

module Kata
  A = 5
  module Dojo
    B = 9
    A = 7
    
    class ScopeIn
      def push
        ::A
      end
    end
  end
end

A = 10

puts Kata::Dojo::ScopeIn.new.push
