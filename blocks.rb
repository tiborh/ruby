#!/usr/bin/env ruby

# 1. ruby blocks must have names
# 2. ruby blocks must be called from functions
# 3. a ruby block must have the same name as the function from which it is to be called
# 4. "yield" is used to call a block (block.call can also be used)

def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}

puts "notable blocks are BEGIN{} and END{}"

BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 

END { 
   # END block code 
   puts "END code block"
}

puts "This will not be the last statement"
