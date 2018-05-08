#!/usr/bin/env ruby

# modules are for sets of methods, which can be included
# Module is the superclass of Class
# e.g. Class.superclass == Module
# Module.superclass == Object

# source:
# https://rubymonk.com/learning/books/1-ruby-primer/chapters/35-modules/lessons/79-getting-modular

module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp
  
  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp
  
  def tai_kyo_kyu
    "Look at my stance!"
  end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups
