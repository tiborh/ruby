#!/usr/bin/env ruby

require 'yaml'

class Ogre
  def initialize(name,strength, speed)
    @name = name
    @strength = strength
    @speed = speed
  end
  
  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialise(yaml_string)
    YAML::load(yaml_string)
  end
  
  # and this is a much-simplified version of our CerealBox#to_s
  def serialise
    YAML::dump(self)
  end
  
  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read, 
  # not computers or users
  def to_s
    "Ogre: [name = #{@name}, strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new("Wendigo",47, 3)
yaml = wendigo.serialise
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialise(yaml)}"
puts

fn = "ogre.dump"

# fh = File.open(fn,"w")
# fh.print([yaml])
# fh.close

shrek = Ogre.new("Shrek",62, 12)
fiona = Ogre.new("Fiona",66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"
fh = File.open(fn,"w")
fh.print(YAML.dump(ogres))
fh.close

fh = File.open(fn,"r")
saved_thing = YAML.load(fh.read)
fh.close

puts "Stuff read from file:"
puts saved_thing

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
