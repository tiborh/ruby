#!/usr/bin/env ruby

# __FILE__ gives the filename of this file
puts "__FILE__", __FILE__
puts "__FILE__.split(\"/\").last", __FILE__.split("/").last
# $0 and $PROGRAM_NAME give the name of the file executed
puts "$0",$0
puts "$PROGRAM_NAME",$PROGRAM_NAME
# so if a module or class is used in a different file (with require or require_relative,
# __FILE__ used in the required file will give the name of that file
# $0 will show the name of the file originally executed, that is, the requirer

require_relative "file_module"
include FILEMOD
write_file_stuff()
