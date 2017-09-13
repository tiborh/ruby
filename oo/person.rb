#!/usr/bin/env ruby

require 'test/unit'
extend Test::Unit::Assertions

class Person
  attr_accessor :email
  attr_reader :name, :gender    # this is only for attribs, not for class variables
  # attr_writer would be the last

  @@count = 0                        # class variable

  def self.count
    return @@count
  end
  
  def initialize(name, gender, email)
    @@count = @@count.succ
    @name,@gender,@email = name,gender,email # instant variables
  end
  
  def hello
    return "Hello. My name is #{@name}."
  end
  
end

if __FILE__ == $0
  n,g,e = "Alf","m","alf@mail.com"
  p1 = Person.new(n,g,e)
  assert_true Person.respond_to?("count"),'Person must respond to "count"'
  assert_equal 1,Person.count,"count must be equal to 1"
  assert_equal n,p1.name,"name must be accessible for reading and equal to #{n}"
  assert_equal g,p1.gender,"gender must be accessible for reading and equal to #{g}"
  assert_equal e,p1.email,"email must be accessible for reading and equal to #{e}"
  assert_equal "Hello. My name is #{n}.",p1.hello
  puts "read tests have passed"
  assert_true p1.respond_to?("email="),"email must be writable"
  p1.email = "alf@mail.edu"
  assert_equal "alf@mail.edu",p1.email,"email must be accessible for reading and equal to alf@mail.edu"
  puts "write test has passed"
end
