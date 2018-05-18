#!/usr/bin/env ruby

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    retval = 0
    #puts "orders: #{orders}"
    orders.each do |order|
      #puts "order: #{order}"
      order.each do |key,val|
        retval += @menu[key] * val
      end
    end
    return retval
  end
end

# sample menu
m0 = { :rice => 1.5, :noodles => 1.1, :shrimps => 2.25, :vegetables => 0.75 }

# sample orders
o0 = {:rice => 1, :noodles => 1} # price 2.6
o1 = {:rice => 2, :noodles => 2} # price 5.2

r0 = Restaurant.new(m0)

require 'test/unit'
extend Test::Unit::Assertions

assert_equal(2.6,r0.cost(o0))
assert_equal(5.2,r0.cost(o1))
assert_equal(7.8,r0.cost(o0,o1))
