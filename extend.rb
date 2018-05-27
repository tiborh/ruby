#!/usr/bin/env ruby

module Foo
  def module_method
    puts "Module Method invoked"
    puts "Caller: #{caller[0]}"
  end
end

class BarFoo
  include Foo                   # this may not work with old Ruby versions
end

class FooBar                    # for older versions of Ruby
  def initialize
    self.extend Foo
  end
end

class Bar
end

bar=Bar.new
barfoo = BarFoo.new
foobar = FooBar.new

foobar.module_method

begin
  barfoo.module_method
rescue NoMethodError => err
  puts "Method was not found: #{err}"
  barfoo.extend Foo
  retry
end

begin
  bar.module_method
rescue NoMethodError => err
  puts "Method was not found: #{err}"
  bar.extend Foo
  retry
end

# Bar extended:
module Foo
  def say_hi
    puts "Hi!"
  end
end

Bar.extend Foo
Bar.say_hi

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  
end
