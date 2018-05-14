#!/usr/bin/env ruby

class Candidate
  attr_accessor :years_of_experience,:github_points,:languages_worked_with,:applied_recently,:age
  def initialize
    @years_of_experience = 0
    @github_points = 0
    @languages_worked_with = []
    @applied_recently = false
    @age = 0
  end
  def applied_recently?
    @applied_recently
  end
  def to_s
    "#{@years_of_experience} #{@github_points} #{@languages_worked_with} #{@applied_recently} #{@age}"
  end
end

def exp_prog?(c)
  c.languages_worked_with.index("Ruby") != nil and (c.years_of_experience >= 2 or c.github_points >= 500) and c.age >= 15 and !c.applied_recently?
end

candidate = Candidate.new
candidate.years_of_experience = 4
candidate.github_points = 293
candidate.languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
candidate.applied_recently = false
candidate.age = 26

puts candidate.to_s
puts candidate.applied_recently?

require 'test/unit'
extend Test::Unit::Assertions

assert_true exp_prog?(candidate)
candidate.age = 14
assert_false exp_prog?(candidate)
candidate.age = 15
candidate.languages_worked_with = []
assert_false exp_prog?(candidate)
candidate.github_points = 500
assert_false exp_prog?(candidate)
candidate.languages_worked_with = ["Ruby"]
assert_true exp_prog?(candidate)
candidate.applied_recently = true
assert_false exp_prog?(candidate)
