#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)              # size of the terminal
    self.caption = 'Whack the Ruby!' # title
  end
end

window = WhackARuby.new
window.show
