#!/usr/bin/env ruby

def find_frequency(sentence, word)
  sentence.downcase.split.count(word)
end

puts find_frequency("The Earth goes round the Sun.","the")
