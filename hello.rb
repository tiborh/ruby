#!/usr/bin/env ruby

module Hello
  def self.hello(name="world")
    puts "Hello #{name.capitalize}!"
    puts "$0       = #{$0}"
    puts "__FILE__ = #{__FILE__}"
    return 0
  end
end

if $0 == __FILE__
  Hello.hello
end
