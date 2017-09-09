#!/usr/bin/env ruby

# from the ruby way 3rd edition

module TempConv
  def self.conv
    puts "Enter temperature and scale (C or F with space before):"
    STDOUT.flush
    str = gets
    exit if str.nil?
    str.chomp!
    exit if str.empty?
    temp, scale = str.split(/\s+/)

    abort "#{temp} is not a valid number." unless temp =~ /-?\d+/

    temp = temp.to_f
    case scale
    when "C", "c"
      f = 1.8 * temp + 32
    when "F", "f"
      c = (5.0/9.0)*(temp-32)
    else
      abort "Must specify C or F as scale"
    end

    if f.nil?
      printf "%.2f degrees C\n" ,c
    else
      printf "%.2f degrees F\n" ,f
    end
  end
end

if __FILE__ == $0
  TempConv.conv
end
