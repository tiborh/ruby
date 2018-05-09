#!/usr/bin/env ruby

class TextParser
  def self.parse(incoming)
    incoming.upcase.scan /\w/
  end
end

print TextParser.parse("Once upon a time..."),"\n"
