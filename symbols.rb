#!/usr/bin/env ruby

# from http://rubylearning.com/satishtalim/ruby_symbols.html

puts "Symbols are names"
puts "Symbols are stored in the symbol table, so they are unique"

puts "these two are different (object ids of strings on the fly):"
puts "string".object_id
puts "string".object_id
puts "these two are the same (symbol on the fly):"
puts :symbol.object_id
puts :symbol.object_id

puts ":symbol printed:"
puts :symbol

# puts "List all symbols:"
# very long, so commented out:
# print Symbol.all_symbols,"\n"

puts "Conversion from string to symbol"
puts "string".to_sym.class # Symbol
puts "Conversion from symbol to string"
puts :symbol.to_s.class    # String  
