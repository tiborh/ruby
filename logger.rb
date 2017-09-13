#!/usr/bin/env ruby

require 'logger'

# source: https://ruby-doc.org/stdlib-2.1.0/libdoc/logger/rdoc/Logger.html

# levels (from highest to lowest):
# ANY (unknown)
# FATAL
# ERROR
# WARN
# INFO
# DEBUG

logs_dir = "logs"

if !File.exists?(logs_dir)
  Dir.mkdir logs_dir
end
if !File.directory?(logs_dir)
  abort "#{logs_dir} must be a directory"
end

logfile = logs_dir + "/logger.log"
# initialise:
logger = Logger.new(logfile)
logger.level = Logger::DEBUG

# this is optional:
original_formatter = Logger::Formatter.new
logger.formatter = proc { |severity, datetime, progname, msg|
  original_formatter.call(severity, datetime, progname, msg.dump)
}

# to show how easy it is to use
logger.debug("Program starts")
logger.info("Hello logger!")
logger.warn("you are warned")
logger.error("an error has occurred")
logger.fatal("a fatal error has occurred")
logger.unknown("an unknown error has occurred")
logger.info("Bye logger!")
puts "log has been written to #{logfile}"
logger.debug("Program ends")
