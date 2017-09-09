#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "\nHello #{name}!"
      end
    else
      puts "\nHello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "\nGoodbye #{@names.join(", ")}."
    else
      puts "\nGoodbye #{@names}."
    end
    puts "Come back soon!"
  end
end

if __FILE__ == $0
  mg0 = MegaGreeter.new
  mg0.say_hi
  mg0.say_bye

  # Change name to be "Zeke"
  mg = MegaGreeter.new("Zeke")
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
