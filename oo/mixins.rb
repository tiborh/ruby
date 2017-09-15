#!/usr/bin/env ruby

abort "not yet operational!"

module Debug
  class Type
    def initialize(name)
      @name = name
    end
  end
  
  def whoAmI?
    "#{self.type.name} (\##{self.id}): #{self.to_s}"
  end
end

# the module gives instance methods to the class
class Phonograph
  include Debug
  def initialize(title,type_name="contemporary")
    @title = title
    @type = Type.new(type_name)
  end
  # ...
end

class EightTrack
  include Debug
  def initialize(title,type_name="contemporary")
    @title = title
    @type = Type.new(type_name)
  end
  # ...
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

puts "Phonogragh: #{ph.whoAmI?}"   # "Phonograph (#537766170): West End Blues"
puts "EightTrack: #{et.whoAmI?}"   # "EightTrack (#537765860): Surrealistic Pillow"

