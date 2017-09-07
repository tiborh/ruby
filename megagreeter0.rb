#!/usr/bin/env ruby

require_relative "megagreeter"

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
