#!/usr/bin/env ruby

# simplest
def a_block(num)
  yield(num)
end

puts a_block(1) { |num| num.next }
# same as  incr = lambda { |incoming| incoming.next }

