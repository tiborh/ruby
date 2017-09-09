#!/usr/bin/env ruby

str_with_double = "Don't say too much."
str_with_single = 'Dunno what to think about "anything".'
str_with_flexib = %|Don't know anything about "anything".| # other chars are also possible
long_str = %{
It was the best of times,
It was the worst of times.
}

print str_with_double,"\n"
print str_with_single,"\n"
print str_with_flexib,"\n"
print long_str,"\n"
puts "Length: #{long_str.length}"
puts "Nu of lines: #{long_str.lines.count}"
puts "[0,1]: #{long_str[0,1]}"

# array maker:
ar = %w|aleph bet gimel dalet|
print ar,"\n"

# same with here doc
long_str = <<EOS
It was the best of times,
It was the worst of times.
EOS
puts "Length: #{long_str.length}"
puts "Nu of lines: #{long_str.lines.count}"
puts "[0,1]: #{long_str[0,1]}"
