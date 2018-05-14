#!/usr/bin/env ruby

fd = IO.sysopen("io.txt","w")
puts fd                         # a number

p IO.new(fd)                    # an object

io_streams = Array.new
ObjectSpace.each_object(IO) { |x| io_streams << x }

p io_streams

# stdin,out,err
puts "stdin: class:  #{STDIN.class}, value: #{STDIN.fileno}"
puts "stdout: class: #{STDOUT.class}, value: #{STDOUT.fileno}"
puts "stderr: class: #{STDERR.class}, value: #{STDERR.fileno}" 

# kernel-provided ones
puts "$std<in|out|err>.object_id gives the same as STD<IN|OUT|ERR>.object_id"

p $stdin.object_id
p STDIN.object_id

puts

p $stdout.object_id
p STDOUT.object_id

puts

p $stderr.object_id
p STDERR.object_id

