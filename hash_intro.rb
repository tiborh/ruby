#!/usr/bin/env ruby
# coding: utf-8

ha = {"one": 1, "two": 2, "three": 3}
print ha,"\n"

# : is not good here:
days = {0=>"日",1=>"月",2=>"火",3=>"水",4=>"木",5=>"金",6=>"土"}
print days,"\n"

days.each do |k,v|
  puts "#{k} => #{v}"
end

# hash from array
nums = Hash[0, "零", 1, "一", 2, "二", 3, "三", 4, "四", 5, "五", 6, "六", 7, "七", 8, "八", 9, "九", 10, "十"]
print nums,"\n"

#from pre-fabricated array, it is not this simple:
a = ["one","一"]
b = ["two","二"]
c = ["three","三"]
abc = []
abc << a << b << c
print abc,"\n"
habc = Hash[abc]
print habc,"\n"

days = Hash.new("default_value")
print days[0],"\n"

require_relative("hash_reader")

names = hash_reader()
print names,"\n"

names.keys.each do |k|
  names[k] += 1
end

print names,"\n"
