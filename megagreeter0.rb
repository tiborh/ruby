#!/usr/bin/env ruby

require_relative "megagreeter"

names = %w|Adalbert Ada Adam Agnes Albert Albrecht Angelica|

mg1 = MegaGreeter.new(names)
mg1.say_hi
mg1.say_bye
