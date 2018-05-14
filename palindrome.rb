#!/usr/bin/env ruby

def palindrome?(s)
  st = s.downcase.gsub(/\s+/,"")
  ob = false
  sta = st.scan(/\w/)
  while (sta.length > 1) do
    a = sta.pop
    b = sta.shift
    # puts "#{a} vs #{b}"
    if a != b
      ob = false
      break
    end
    ob = true
  end
  return ob
end

s1 = "Never odd or even"
s0 = "This one should be false"

puts s1
puts palindrome?(s1)
puts s0
puts palindrome?(s0)

require 'test/unit'
extend Test::Unit::Assertions
assert_true(palindrome?(s1))
assert_false(palindrome?(s0))
