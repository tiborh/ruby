#!/usr/bin/env ruby

require 'gosu'
require_relative 'zorder'
require_relative 'player'
require_relative 'star'

class Tutorial < Gosu::Window
  def initialize
    super ZOrder::SPACEWIDTH, ZOrder::SPACEHEIGHT
    self.caption = "Tutorial Game"

    @background_image = Gosu::Image.new("media/space.png", :tileable => true)

    @player = Player.new
    @player.warp(ZOrder::SPACEWIDTH/2, ZOrder::SPACEHEIGHT/2)

    @star_anim = Gosu::Image.load_tiles("media/star.png", ZOrder::STARSIZE, ZOrder::STARSIZE)
    @stars = Array.new

    @font = Gosu::Font.new(ZOrder::FONTSIZE)
  end
  
  def update
    if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      @player.turn_left
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      @player.turn_right
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_0
      @player.accelerate
    end
    if Gosu.button_down? Gosu::KB_DOWN
      @player.decelerate
    end
    @player.move

    @player.collect_stars(@stars)

    if rand(100) < ZOrder::STARANDLIMIT and @stars.size < ZOrder::STARSIZE
      @stars.push(Star.new(@star_anim))
    end
  end
  
  def draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND)
    @player.draw
    @stars.each { |star| star.draw }
    @font.draw("Score: #{@player.score}", ZOrder::SCOREX, ZOrder::SCOREY, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE  or id == Gosu::KB_Q
      close
    else
      super
    end
  end
end

Tutorial.new.show
