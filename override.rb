#!/usr/bin/env ruby

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"
  end
end

class Human < Animal
  def move
    super + " by walking"
  end
end

class Penguin < Bird
  def move
    Animal.new.move + " by swimming"
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal('I can move',Animal.new.move)
  assert_equal('I can move by flying',Bird.new.move)
  assert_equal('I can move by walking',Human.new.move)
  assert_equal('I can move by swimming',Penguin.new.move)
  assert_equal(Animal,Human.superclass)
  assert_equal(Bird,Penguin.superclass)
end
