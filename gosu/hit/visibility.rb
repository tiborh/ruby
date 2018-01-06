#!/usr/bin/env ruby

require 'gosu' 

class WhackARuby < Gosu::Window
  def initialize
    # Terminal:
    @W = 800             # size of the terminal
    @H = 600
    super(@W, @H)
    self.caption = 'Whack the Ruby!'                # title

    # the ruby:
    @ruby_img = Gosu::Image.new('img/small_ruby.png')  # create image
    @init_x = 200
    @init_y = 200
    @ruby_x = @init_x                # position parameters
    @ruby_y = @init_y
    @width = 50                 # image parameters
    @half_width = @width / 2
    @height = 50
    @half_height = @height / 2
    @init_vx = 5
    @init_vy = 5
    @vx = @init_vx       # movement parameters
    @vy = @init_vy
    @init_visibility = -10      # visibility
    @visible = @init_visibility
  end

  def draw                      # draw the image
    @ruby_img.draw(@ruby_x - @half_width, @ruby_y - @half_height, 1) if @visible > 0
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
    @ruby_x += @vx
    @ruby_y += @vy
    @vx *= -1 if (@ruby_x <= 0 + @half_width || @ruby_x >= @W - @half_width)
    @vy *= -1 if (@ruby_y <= 0 + @half_height || @ruby_y >= @H - @half_height)

    close() if (Gosu.button_down? Gosu::KB_ESCAPE or
                Gosu.button_down? Gosu::KB_Q)

    @visible -= 1
    @visible = 30 if @visible < @init_visibility and rand < 0.01
    @visible = 1 if Gosu.button_down? Gosu::KB_V

    if (Gosu.button_down? Gosu::KB_R) # reset
      @ruby_x = @init_x
      @ruby_y = @init_y
      @vx = @init_vx
      @vy = @init_vy
      @visible = @init_visibility
    end
  end
      
end

window = WhackARuby.new
window.show
