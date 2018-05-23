#!/usr/bin/env ruby

require 'yaml'

class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters,fn = "fairy.dump")
	# TODO: serialize a character hash of :ogres, :dragons, and :fairies  
  fh = File.open(fn,"w")
  fh.print(YAML.dump(characters))
  fh.close
end

def load_game(fn="fairy.dump")
  # TODO: return a deserialized hash of characters
  fh = File.open(fn,"r")
  characters = YAML.load(fh.read)
  fh.close
  return characters
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  ogre_str = "{:ogres = [fiona, shrek]}"
  fairy_str = "{:fairies = [tink]}"
  ofn = "ogre.dump"
  save_game(ogre_str,ofn)
  save_game(fairy_str)
  assert_equal(ogre_str,load_game(ofn))
  assert_equal(fairy_str,load_game())
end
