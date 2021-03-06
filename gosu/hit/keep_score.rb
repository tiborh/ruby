#!/usr/bin/env ruby

require 'gosu'
include FileTest

class WhackARuby < Gosu::Window
  def initialize
    # time
    @game_time = 100_000        # in milliseconds
    @start_time = Gosu.milliseconds
    @timelimit = @start_time + @game_time
    @time_left = calc_time_left()
    
    # Terminal:
    @W = 800             # size of the terminal
    @H = 600
    super(@W, @H)
    self.caption = 'Whack the Ruby!'                # title

    # the ruby:
    @ruby_img = Gosu::Image.new('img/small_ruby.png')  # create image
    @broken_ruby_img = Gosu::Image.new('img/small_ruby_broken.png')
    @broken_counter = 0
    @broken_hit = -10
    @hit_counter = 0
    @miss_counter = 0
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

    #score
    @score = 0
    @highscore_fn = "highscore.txt"
    @highscore = exists?(@highscore_fn) ? File.open(@highscore_fn).read.to_i : 0
    @hit_incr = 5
    @miss_decr = 1
    @font = Gosu::Font.new(30)  # used for score  
  end

  def draw                      # draw the image
    # @hammer_img.draw(@hammer_x - @half_width, @hammer_y - @half_height, 1)
    if (Gosu.button_down? Gosu::MS_LEFT)
      @hammer_img.draw_rot(mouse_x,mouse_y,0,45)
    else
      @hammer_img.draw(mouse_x-@half_width, mouse_y-@half_height, 1)
    end
    
    if (@visible > 0)
      if (@broken_counter >= 0)
        @ruby_img.draw(@ruby_x - @half_width, @ruby_y - @half_height, 1)
      else (@broken_counter < 0)
        @broken_ruby_img.draw(@ruby_x - @half_width, @ruby_y - @half_height, 1)
        @broken_counter += 1
      end
    end

    if @hit == 0
      c = Gosu::Color::NONE
    elsif @hit > 0
      c = Gosu::Color::GREEN
      @hit = 0
    elsif @hit < 0
      c = Gosu::Color::RED
      @hit = 0
    else
      c = Gosu::Color::NONE
    end 
    draw_quad(0, 0, c, @W, 0, c, @W, @H, c, 0, @H, c)
    
    @font.draw("time left:  #{@time_left}", 20, 20, 2)
    @font.draw("your score: #{@score}", 600, 20, 2) # score display
    @font.draw("highscore:  #{@highscore}", 600, 50, 2)
  end

  def update
    @time_left = calc_time_left()
    game_closer() if @time_left <= 0.0
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

    @visible -= 1
    @visible = @max_visibility if @visible < @init_visibility and rand < 0.01
    @visible = 1 if Gosu.button_down? Gosu::KB_V

    if (Gosu.button_down? Gosu::KB_R) # reset
      game_resetter()
    end
  end

  def button_down(id)
    if (id == Gosu::MS_LEFT)
      if Gosu.distance(mouse_x, mouse_y, @ruby_x, @ruby_y) < 50 && @visible >= 0
        @hit = 1
        @hit_counter += 1
        @score += @hit_incr
        # @highscore = @score if @score > @highscore
        @broken_counter = @broken_hit
      else 
        @hit = -1
        @miss_counter += 1
        @score -= @miss_decr
      end
      print "hit: #{@hit}\n"
      print "score: #{@score} (high: #{@highscore})\n"
    end
    if id == Gosu::KB_ESCAPE  or id == Gosu::KB_Q
      game_closer()
    else
      super
    end
  end

  def calc_time_left
    return (@timelimit - Gosu.milliseconds)/1000.0
  end
  
  def game_resetter
    @start_time = Gosu.milliseconds
    @timelimit = @start_time + @game_time
    @ruby_x = @init_x
    @ruby_y = @init_y
    @vx = @init_vx
    @vy = @init_vy
    @visible = @init_visibility
    @hit = @hit_init
    @hit_counter = @miss_counter = 0
    @score = 0
    print("Reset\n")
  end
  
  def game_closer
    if (@score > @highscore)
      hs = File.open(@highscore_fn,"w")
      hs.puts(@score)
      hs.close
      print("Highscore saved.\n")
    end
    print("Your final score:   #{@score}\n")
    print("Number of hits:     #{@hit_counter}\n")
    print("Number of misses:   #{@miss_counter}\n")
    print("Previous highscore: #{@highscore}\n")
    print("Game over.\n")
    close()
  end
end

window = WhackARuby.new
window.show
