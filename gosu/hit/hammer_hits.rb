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
    @broken_ruby_img = Gosu::Image.new('img/small_ruby_broken.png')
    @init_x = 200
    @init_y = 200
    @ruby_x = @init_x                # position parameters
    @ruby_y = @init_y
    @width = 50                 # image parameters
    @half_width = @width / 2
    @height = 50
    @half_height = @height / 2
    @init_vx = 5       # movement parameters
    @init_vy = 5
    @vx = @init_vx
    @vy = @init_vy
    @init_visibility = -10      # visibility
    @max_visibility = 50
    @visible = @init_visibility

    # the hammer:
    @hammer_img = Gosu::Image.new('img/small_hammer.png')
    @hit_init = 0
    @hit = @hit_init
  end

  def draw                      # draw the image
    # @hammer_img.draw(@hammer_x - @half_width, @hammer_y - @half_height, 1)
    if (Gosu.button_down? Gosu::MS_LEFT)
      @hammer_img.draw_rot(mouse_x,mouse_y,0,45)
    else
      @hammer_img.draw(mouse_x-@half_width, mouse_y-@half_height, 1)
    end
    if (@visible > 0)
      if (@hit <= 0)
        @ruby_img.draw(@ruby_x - @half_width, @ruby_y - @half_height, 1)
      else
        @broken_ruby_img.draw(@ruby_x - @half_width, @ruby_y - @half_height, 1)
        @hit -= 0.1
      end
    end
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
    @visible = @max_visibility if @visible < @init_visibility and rand < 0.01
    @visible = 1 if Gosu.button_down? Gosu::KB_V

    if (Gosu.button_down? Gosu::KB_R) # reset
      @ruby_x = @init_x
      @ruby_y = @init_y
      @vx = @init_vx
      @vy = @init_vy
      @visible = @init_visibility
      @hit = @hit_init
    end
  end

  def button_down(id)
    if (id == Gosu::MS_LEFT)
      if Gosu.distance(mouse_x, mouse_y, @ruby_x, @ruby_y) < 50 && @visible >= 0
        @hit = 1
      else 
        @hit = -1
      end
      print "hit: #{@hit}\n"
    end
  end
  
end

window = WhackARuby.new
window.show
