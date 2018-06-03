#!/usr/bin/env ruby

def describe(something)
  puts "I am a '#{something.class}' and I look like '#{something}'"
end

describe(1_024)
describe(1.2e-30)
describe(9**30)

def foo
  "Foo"
end

describe("a string with a sci-notation float! #{1.2e-3}")
describe('a boring, non-interpolated string. #{1.2e-3}')
describe("a backslash-escaped string: \#{1.2e-3}")
describe(%W(#{foo} Bar Bar\ with\ space))
describe(['#{foo}', 'Bar', 'Bar with space'])
describe(%s{foo})
puts "running in a subshell:"
describe(%x(echo foo:#{foo}))
describe(%r(/home/#{foo}))
describe(1..10)
describe(0...10)

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  assert_equal(Fixnum,1_024.class)
  assert_equal(Float,1.2e-30.class)
  assert_equal(Bignum,(9**30).class)
  assert_equal("one two three",%/one two three/)
  assert_equal("one two three",%Q{one two three})
  assert_equal('one two three',%q/one two three/)
  assert_equal(["Foo", "Bar", "Bar with space"],%W(#{foo} Bar Bar\ with\ space))
  assert_equal(["\#{foo}", "Bar", "Bar with space"],%w(#{foo} Bar Bar\ with\ space))
  assert_equal(:foo,%s{foo})
end
