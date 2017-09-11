#!/usr/bin/env ruby

# source: The Ruby Way, 3rd edition

def diverror
  n1 = 3
  n2 = 0
  begin
    puts "#{n1} / #{n2} == #{n1/n2}"
  rescue ZeroDivisionError => err
    puts "ZeroDivisionError has been caught: #{err}"
    n2 = 2
    retry
  end
end

diverror

def empty_except
  puts "raise comes after this"
  raise
  puts "this does not get printed"
end

def except_name
  puts "raise comes after this"
  raise ArgumentError
  puts "this does not get printed"
end

def except_msg
  puts "raise comes after this"
  raise ArgumentError, "except_msg string"
  puts "this does not get printed"
end

def except_obj
  puts "raise comes after this"
  raise ArgumentError.new("except_obj string")
  puts "this does not get printed"
end

def except_line
  puts "raise comes after this"
  raise ArgumentError, "except_line string", caller[0]
  puts "this does not get printed"
end

begin
  empty_except
rescue => err
  print "\n'empty_except' has been rescued. msg:\n",err,"\n"
else
  puts "other exception: #{err}"
ensure
  puts "ensure that something gets done"
end

begin
  puts "\ncalling except_name"
  except_name
rescue ArgumentError => err
  puts "ArgumentError has been caught"
  puts "msg: #{err}"
rescue NameError
  puts "NameError has been caught"
else
  puts "other exception: #{err}"
end

begin
  puts "\ncalling except_msg"
  except_msg
rescue ArgumentError => err
  puts "ArgumentError has been caught"
  puts "msg: #{err}"
end

begin
  puts "\ncalling except_obj"
  except_obj
rescue ArgumentError => err
  puts "ArgumentError has been caught"
  puts "msg: #{err}"
else
  puts "other exception: #{err}"
end

begin
  puts "\ncalling except_line"
  except_line
rescue ArgumentError => err
  puts "ArgumentError has been caught\nmsg: #{err}"
else
  puts "other exception: #{err}"
end
