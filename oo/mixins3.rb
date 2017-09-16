#!/usr/bin/env ruby

# source: http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html

module Inject
  def inject(n)
    # puts "arg: n == #{n}"
    each do |value|
      # puts "value == #{value}"
      n = yield(n, value)
      # puts "new n: #{n}"
    end
    n
  end
  def sum(initial = 0)
    inject(initial) { |n, value| n + value }
  end
  def prod(initial = 1)
    inject(initial) { |n, value| n * value }
  end
end

if __FILE__ == $0
  # mixing the module into two classes:
  class Array
    include Inject
  end

  a1 = (1..5).to_a

  puts "The array: #{a1}"
  puts "Sum of array: #{a1.sum}"		#  15
  # the original had .product but it always produced: [[1], [2], [3], [4], [5]]
  puts "Product of array: #{a1.prod}"	# 120

  class Range
    include Inject
  end

  r1to5 = (1..5)

  puts "The range: #{r1to5}"
  puts "Sum of range: #{r1to5.sum}"
  puts "Prod of range: #{r1to5.prod}"
end
