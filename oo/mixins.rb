#!/usr/bin/env ruby

#a complete mess but at least gives back something

module Debug
  attr :next_id,:type,:id,:oid,:title
  def to_s
    @title
  end
  def whoAmI?
    "#{self.type} (iid:\##{self.id}/oid:\##{self.oid}): #{self.to_s}"
  end
end

# the module gives instance methods to the class
class Phonograph
  @@next_id = 0
  include Debug
  def initialize(title,type="contemporary")
    @id,@oid = @@next_id,self.object_id
    @@next_id = @@next_id.succ
    @title,@type = title,type
  end
  # ...
end

class EightTrack
  @@next_id = 0
  include Debug
  def initialize(title,type="contemporary")
    @id = @@next_id
    @oid = self.object_id
    @@next_id = @@next_id.succ
    @title = title
    @type = type
  end
  # ...
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

puts "Phonogragh: #{ph.whoAmI?}"   # "Phonograph (#537766170): West End Blues"
puts "EightTrack: #{et.whoAmI?}"   # "EightTrack (#537765860): Surrealistic Pillow"

