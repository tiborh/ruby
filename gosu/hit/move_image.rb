#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)             # size of the terminal
    self.caption = 'Whack the Ruby!'                # title
    @image = Gosu::Image.new('img/small_ruby.png')  # create image
    @init_x = 200
    @init_y = 200
    @x = @init_x                # position parameters
    @y = @init_y
    @width = 50                 # image parameters
    @height = 50
    @velocity_x = 5             # movement parameters
    @velocity_y = 5
  end

  def draw                      # draw the image
    @image.draw(@x - @width / 2, @y - @height / 2, 1)
  end

  def update
    @x += @velocity_x
    @y += @velocity_y
  end
  
  def button_down(button)       # ESC to exit
    if (button == Gosu::KB_ESCAPE)
           close()
    elsif (button == Gosu::KB_R)
      @x = @init_x                # reset position
      @y = @init_y
    else
      Window::button_down(button);
    end
  end
    
end

window = WhackARuby.new
window.show
