#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)              # size of the terminal
    self.caption = 'Whack the Ruby!' # title
    @image = Gosu::Image.new('img/small_ruby.png') # create image
    @x = 200                                 # parameters for image
    @y = 200
    @width = 50
    @height = 50
  end
  def draw                        # draw the image
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
  end
  def button_down(button)
    if (button == Gosu::KB_ESCAPE)
           close()
    else
      Window::button_down(button);
    end
  end
    
end

window = WhackARuby.new
window.show
