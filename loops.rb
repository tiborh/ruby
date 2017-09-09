#!/usr/bin/env ruby
# coding: utf-8

# simplest:
5.times do
  puts "Hello!"
end

# loop variable caught:
5.times do |num|
  puts "#{num}. Hello!"
end

# with range
(1..5).each do |num|
  puts "#{num}. Range hello"
end

# with array and index
[1,2,3,4,5].each_with_index do |num,i|
  puts "#{i}. with_index hello (#{num})"
end

# classic
for num in 0..5                 # for ranges and arrays
  puts "#{num}. for hello"
end

def until_example
  yield
end

until_example{
  # until
  num = 0
  until num == 5 do
    puts "#{num}. until hello"
    num+=1
  end
}

# as modifier
def until_example2
  yield
end

until_example2{
  num = 0
  begin
    puts "#{num}. until hello (2)"
    num+=1
  end until num==5
}

def bare_loop
  yield
end

bare_loop {
  num = 0
  loop do
    puts "#{num}. loop hello"
    num+=1
    break if num == 5
  end
}

def with_iterator
  yield
end

with_iterator{
  list = %w|aleph bet gimel dalet|
  0.upto(list.length-1) do |i|
    puts "#{i}. letter #{list[i]}"
  end
}

def loop_hash
  yield
end

loop_hash{
  hash = {:aleph => "א", :bet => "ב", :gimel => "ג", :dalet => "ד"}
  hash.each do |k,v|
    puts "#{v}: #{k}"
  end
}
