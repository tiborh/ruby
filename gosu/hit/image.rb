#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)              # size of the terminal
    self.caption = 'Whack the Ruby!' # title
    @image = Gosu::Image.new('img/small_ruby.png') # create image
    @broken_image = Gosu::Image.new('img/small_ruby_broken.png') # create image
    @x = 200                                 # parameters for image
    @y = 200
    @width = 50
    @height = 50
  end
  
  def draw                        # draw the image
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
    @broken_image.draw(@x - @width / 2, @y - @height / 2, 1)
  end
  
  def update
        close() if (Gosu.button_down? Gosu::KB_ESCAPE or
                Gosu.button_down? Gosu::KB_Q)
  end
    
end

window = WhackARuby.new
window.show
