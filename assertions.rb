#!/usr/bin/env ruby

# simplest:
require 'test/unit'
extend Test::Unit::Assertions
# good intro here:
# http://ruby-doc.org/stdlib-2.0.0/libdoc/test/unit/rdoc/Test/Unit/Assertions.html

#positive test:
assert 1 == 2-1

# rescuing a negative test
begin
  assert 0 == 0+1,"zero cannot be equal to zero plus one"
rescue Test::Unit::AssertionFailedError
  puts "negative test has been rescued"
end

# same with assert_equal
assert_equal 1, 2-1

begin
  assert_equal 0, 0+1, "zero cannot be equal to zero plus one"
rescue Test::Unit::AssertionFailedError
  puts "second negative test has been rescued"
end

# assertion for blocks
begin
  assert_block("block assertion has failed") do
    [1, 2, 3].any? { |num| num < 1 }
  end
rescue Test::Unit::AssertionFailedError
  puts "assert_block negative test has been rescued"
end
  
