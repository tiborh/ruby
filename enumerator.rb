#!/usr/bin/env ruby

# main source:
# https://rossta.net/blog/what-is-enumerator.html
# previous one to check:
# https://rossta.net/blog/blog/ruby-enumerable.html

# the reference suggested there:
# http://ruby-doc.org/core-2.2.3/Enumerable.html
# another suggested reading (a primer):
# http://ruby.bastardsbook.com/chapters/enumerables/
# and another reference:
# http://ruby-doc.org/core-2.2.0/Enumerator.html

a = (1..5).to_a

puts "The array used in (most of) the examples below:"
print a,"\n"

puts "a.each: #{a.each}"
puts "a.select: #{a.select}"
puts "a.map: #{a.map}"
puts "a.map.each { |n| p n } #{a.map.each { |n| p n }} return would be an array of nil's"
# am = a.map
# puts "am.each { |n| p n } #{am.each { |n| p n }}"
puts "same with #each_with_index (and multiplying n with i): #{a.map.each_with_index { |n, i| n * i }}"
puts "simplified to a.map.with_index:  #{a.map.with_index { |n, i| n * i }}"

# the next reference is dead, but another one found may be worth checking out:
# https://blog.carbonfive.com/2012/10/02/enumerator-rubys-versatile-iterator/

letters = ('a'..'z').to_a

group_1 = letters.reverse_each.group_by.each_with_index do |item, index|
  index % 3
end

group_2 = letters.reverse_each.each_with_index.group_by do |item, index|
  index % 3
end

puts "an example of difference in order:"

puts "letters.reverse_each.group_by.each_with_index { |item, index| index % 3}"
puts group_1

puts "letters.reverse_each.each_with_index.group_by { |item, index| index % 3}"
puts group_2

puts "#next and #cycle and be called."

puts "an example is zebra-coloured table:"

Project = Struct.new(:name)

colors = ['aliceblue', 'ghostwhite'].cycle
projects = [Project.new("TODO"),
            Project.new("Work"),
            Project.new("Home")]

require 'erb'

erb = (<<-ERB)
<table>
<% projects.each_with_index do |project, index| %>
 <tr style="background: <%= colors.next %>">
   <td><%= index + 1 %></td>
   <td><%= project.name %></td>
 </tr>
<% end %>
</table>
ERB

p ERB.new(erb).result(binding).gsub(/^$\n/, "")
puts "it does not come out as nicely printed as in the example page."

puts "\n'a' enumerated (#each) with two cycles:"

nums = a.cycle(2)
nums.each { |a| puts a }

p "with index:"
nums.each_with_index { |a, i| puts "#{i}: #{a}" }

p "same with loop"
loop { p nums.next }

# peek and next can be used as a safe manual method:
nums.rewind
puts "peek: #{nums.peek}"
puts "next: #{nums.next}"
puts "peek: #{nums.peek}"
puts "next: #{nums.next}"
puts "rewind and peek #{nums.rewind.peek}"


