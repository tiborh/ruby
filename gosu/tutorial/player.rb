class Player
  attr_reader :score
  
  def initialize
    @image = Gosu::Image.new("media/starfighter.bmp")
    @beep = Gosu::Sample.new("media/beep.wav")
    @x = @y = @vel_x = @vel_y = @angle = ZOrder::INITANGLE
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end
  
  def turn_left
    @angle -= ZOrder::TURNINCR
  end
  
  def turn_right
    @angle += ZOrder::TURNINCR
  end
  
  def accelerate
    @vel_x += Gosu.offset_x(@angle, ZOrder::ACCELINCR)
    @vel_y += Gosu.offset_y(@angle, ZOrder::ACCELINCR)
  end

  def decelerate
    @vel_x -= Gosu.offset_x(@angle, ZOrder::ACCELINCR)
    @vel_y -= Gosu.offset_y(@angle, ZOrder::ACCELINCR)
  end
  
  def move
    @x += @vel_x
    @y += @vel_y
    @x %= ZOrder::SPACEWIDTH
    @y %= ZOrder::SPACEWIDTH
    
    @vel_x *= ZOrder::VELOCHANGE
    @vel_y *= ZOrder::VELOCHANGE
  end

  def score
    @score
  end

  def collect_stars(stars)
    stars.reject! do |star|
      if Gosu.distance(@x, @y, star.x, star.y) < ZOrder::PROXIMITY
        @score += ZOrder::SCOREINCR
        @beep.play
        true
      else
        false
      end
    end
  end

  def draw
    @image.draw_rot(@x, @y, ZOrder::ZPOSITION, @angle)
  end
end
