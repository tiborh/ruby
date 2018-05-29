#!/usr/bin/env ruby

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

# Change the last example to return the found tile from a method called search, instead. 
# search should receive the floor plan as a parameter.

candy = catch(:found) do
	floor.each do |row|
  	row.each do |tile|
    	throw(:found, tile) if tile == "jawbreaker" || tile == "gummy"
  	end
	end
end
puts candy

def search(floor)
  floor.each do |row|
    row.each do |tile|
      return(tile) if tile == "jawbreaker" || tile == "gummy"
    end
  end
end

puts search(floor)
