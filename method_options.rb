#!/usr/bin/env ruby

def ameth(num1,num2,options={})
  puts options
  puts "asphalt strange music" if options[:asm]
  puts "bison saves market" if options[:bsm]
  puts "gandalf spoke magnificently" if options[:gsm]
end

ameth(1,2,asm:true,bsm:false,gsm:true)
