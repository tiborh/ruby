#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)              # size of the terminal
    self.caption = 'Press Escape to exit' # title
  end
  def update
    close() if (Gosu.button_down? Gosu::KB_ESCAPE or
                Gosu.button_down? Gosu::KB_Q)
  end
end

window = WhackARuby.new
window.show
