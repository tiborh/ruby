#!/usr/bin/env ruby

def random_select(array, n)
  outa = Array.new(0)
  alen = array.length
  n.times do
    outa << array[rand(alen)]
  end
  return outa
end

sampa = ("A".."Z").to_a

puts "#{random_select(sampa,3)}"
