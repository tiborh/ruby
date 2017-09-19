#!/usr/bin/env ruby
# coding: utf-8

# source:
# https://learn.onemonth.com/ruby-tutorial-map-vs-each-a692b63e1850

曜日 = %w|月 火 水 木 金 土 日|

def days0(曜日)
  文章 = Array.new
  曜日.each do |日|
   文章 << "\t今日は、#{日}曜日です。"
  end
  return 文章
end

puts "first with each:",days0(曜日),"\n"

def days1(曜日)
  曜日.map { |日| "\t今日は、#{日}曜日です。" }
end

puts "then, with map:",days1(曜日),"\n"
