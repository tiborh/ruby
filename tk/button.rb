#!/usr/bin/env ruby

# source: http://rubylearning.com/satishtalim/ruby_tk_tutorial.html
# button reference: https://www.tutorialspoint.com/ruby/ruby_tk_button.htm

require 'tk'  
btn = TkButton.new do
  width 5                       # it was hard to see
  height 2
  text "EXIT"
  font TkFont.new('sans-serif 24') # for better visibility
  command do
    puts "exiting..."
    exit
  end
  pack('side'=>'left', 'padx'=>10, 'pady'=>10)  
end  
Tk.mainloop
