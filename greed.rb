#!/usr/bin/env ruby

require 'test/unit'
extend Test::Unit::Assertions

def dice(num)
  collect = []
  num.times do
    collect << rand(6)+1
  end
  print(collect,"\n")
  return collect
end

def score(dice)
  #print dice,"\n"
  collect = Hash.new(0)
  score = 0
  dice.each do |it|
    collect[it] += 1
  end
  three_or_more = collect.select{ |k,v| v >= 3 }
  # print "3 or more: ",three_or_more,"\n"
  if (collect[1] >= 3)
    score += 1000
    collect[1] -= 3
    three_or_more.delete(1)
  elsif three_or_more.length > 0
    three_or_more.each do |k,v|
      score += k*100 if v >= 3
      collect[5] -= 3 if k == 5
    end
  end
  score += collect[1] * 100 if collect[1]
  score += collect[5] * 50 if collect[5]
  # print collect,"\n"
  # print "Score: #{score}\n"
  return score
end

print ("Score: #{score(dice(6))}\n")
# examples by definition
assert_equal 0, score([])
assert_equal 1000, score([1,1,1])
assert_equal 200, score([1,1])
assert_equal 1200, score([1,1,1,1,1])
assert_equal 400, score([4,4,4,4])
assert_equal 550, score([5,5,5,5])
assert_equal 50, score([5])

# further tests
assert_equal score([1,1,1,5,1]), 1150
assert_equal score([2,3,4,6,2]), 0
assert_equal score([3,4,5,3,3]), 350
assert_equal score([1,5,1,2,4]), 250

# other triples
assert_equal 200, score([2,2,2])
assert_equal 300, score([3,3,3])
assert_equal 400, score([4,4,4])
assert_equal 500, score([5,5,5])
assert_equal 600, score([6,6,6])

# complex
assert_equal 550, score([3, 1, 3, 5, 3, 1])
