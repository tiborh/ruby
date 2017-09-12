#!/usr/bin/env ruby

# source for ctrl-c trap:
# https://stackoverflow.com/questions/2089421/capturing-ctrl-c-in-ruby
trap("SIGINT") {
  puts "\nCtrl-c has been caught. Exiting..."
  exit
}

# source:
# https://www.jstorimer.com/blogs/workingwithcode/7766125-writing-ruby-scripts-that-respect-pipelines

# 1. if standard out is used, it can be piped to other programs
# 2. ARGF reads pipelines
# 3. unending pipe e.g. tail -f needs .each_line construct
#    tail -f logs/logger.log | ./pipe.rb
#    (end while it is running, execute ./logger.rb)
# 4. pipe interrupter programs, e.g. top, need exception handling
#    cat /dev/urandom | base64 -w 80 | ./pipe.rb | head

# if no pipe in is required:
# input = File.open(ARGV[0])

# Keep reading lines of input as long as they're coming.
while input = ARGF.gets
  ARGF.each_line do |line|
    # Construct a string that begins with the length of this line
    # and ends with the content. The trailing newline is #chop'ped 
    # off of the content so we can control where the newline occurs.
    # The string are joined with a tab character so that indentation
    # is preserved.
    out_line = [line.size, line.chop].join("\t")
    begin
      puts out_line
    rescue Errno::EPIPE
      exit(74)
    rescue Exception => err
      puts "unexpected error: #{err}"
      exit
    end
  end
end
