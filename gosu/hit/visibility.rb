#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    @W = 800
    @H = 600
    super(@W, @H)             # size of the terminal
    self.caption = 'Whack the Ruby!'                # title
    @image = Gosu::Image.new('img/small_ruby.png')  # create image
    @init_x = 200
    @init_y = 200
    @x = @init_x                # position parameters
    @y = @init_y
    @width = 50                 # image parameters
    @height = 50
    @init_vx = 5
    @init_vy = 5
    @vx = @init_vx       # movement parameters
    @vy = @init_vy
    @init_visibility = -10
    @visible = @init_visibility
  end

  def draw                      # draw the image
    @image.draw(@x - @width / 2, @y - @height / 2, 1) if @visible > 0
  end

  def update
    if (Gosu.button_down? Gosu::KB_UP)
      @vx += 1 if @vx >= 0
      @vx -= 1 if @vx <= 0
      @vy += 1 if @vy >= 0
      @vy -= 1 if @vy <= 0 
    end
    if (Gosu.button_down? Gosu::KB_DOWN)
      @vx -= 1 if @vx > 0
      @vx += 1 if @vx < 0
      @vy -= 1 if @vy > 0
      @vy += 1 if @vy < 0
    end
    @x += @vx
    @y += @vy
    @vx *= -1 if (@x <= 0 + @width / 2 || @x >= @W - @width / 2)
    @vy *= -1 if (@y <= 0 + @height / 2 || @y >= @H - @height / 2)

    close() if (Gosu.button_down? Gosu::KB_ESCAPE or
                Gosu.button_down? Gosu::KB_Q)

    @visible -= 1
    @visible = 30 if @visible < @init_visibility and rand < 0.01

    if (Gosu.button_down? Gosu::KB_R) # reset
      @x = @init_x
      @y = @init_y
      @vx = @init_vx
      @vy = @init_vy
      @visible = @init_visibility
    end
  end
      
end

window = WhackARuby.new
window.show
