#!/usr/bin/env ruby

class Colour
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299*@r + 587*@g + 114*@b) / 1000
  end

  def brightness_difference(another_colour)
    (self.brightness_index - another_colour.brightness_index).abs
  end

  def hue_difference(another_colour)
    (@r-another_colour.r).abs + (@g-another_colour.g).abs + (@b-another_colour.b).abs
  end

  def enough_contrast?(another_colour)
    self.brightness_difference(another_colour) > 125 and self.hue_difference(another_colour) > 500
  end
end

