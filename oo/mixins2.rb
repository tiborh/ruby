#!/usr/bin/env ruby
# coding: utf-8

class Song
  include Comparable
  attr :duration
  def initialize(title,performer,duration)
    @title,@performer,@duration = title,performer,duration
  end
  def <=>(other)                # if not defined: ArgumentError
    self.duration <=> other.duration
  end
  def to_s
    "#{@title} by #{@performer}, #{@duration}s"
  end
end

if __FILE__ == $0
  song1 = Song.new("My Way",  "Sinatra", 225)
  song2 = Song.new("Bicylops", "Fleck",  260)
  puts "song1: #{song1}"
  puts "song2: #{song2}"
  puts "song1 <=> song2: #{song1 <=> song2}"	#	-1
  puts "song2 <=> song1: #{song2 <=> song1}"	#	1
  puts "song1  <  song2: #{song1  <  song2}"	#	true
  puts "song1 ==  song1: #{song1 ==  song1}"	#	true
  puts "song1  >  song2: #{song1  >  song2}"	#	false
end
