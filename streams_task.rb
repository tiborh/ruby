#!/usr/bin/env ruby

capture = StringIO.new

warn "STDERR is not yet captured."

$stderr = capture

warn "Warning: STDERR has been captured."

puts capture
puts capture.string
