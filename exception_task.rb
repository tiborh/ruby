#!/usr/bin/env ruby

class KasayaError < StandardError
end

def robe(type)
  type = type.capitalize
  txt = "Dharmaguptaka's Kasaya Robe"
  ks = KasayaError.new(txt)
  raise ks if type != "Kasaya"
  return txt
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions

  # tests should come here:
  txt = "Dharmaguptaka's Kasaya Robe"
  assert_equal(txt,robe("Kasaya"))
  assert_equal(txt,robe("KASAYA"))
  assert_equal(txt,robe("kasaya"))
  assert_raise KasayaError do
    robe("end")
  end
end
