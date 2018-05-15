#!/usr/bin/env ruby

def find_frequency(sentence, word)
  sentence.downcase.split.count(word)
end

a = "To be or not to be."
puts a
puts find_frequency(a,"to")
puts find_frequency(a,"be")
