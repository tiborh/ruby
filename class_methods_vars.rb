#!/usr/bin/env ruby

class Planet
  @@planets_count = 0
    
  def initialize(name)
    @name = name
    @@planets_count += 1
  end
  
  def self.planets_count        # planets_count << self would also work
    @@planets_count
  end  
end

Planet.new("earth"); Planet.new("uranus")

p Planet.planets_count


if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
