#!/usr/bin/env ruby

class Fixnum
  def prev()
    self - 1
  end
end

if (ARGV.length > 0)
  ARGV.each do |str|
    puts str.to_i.prev
  end
end
