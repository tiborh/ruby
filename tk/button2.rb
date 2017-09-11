#!/usr/bin/env ruby

# source: http://rubylearning.com/satishtalim/ruby_tk_tutorial.html
# button reference: https://www.tutorialspoint.com/ruby/ruby_tk_button.htm
# modified to illustrate "configure" of the page above

require 'tk'  
root = TkRoot.new {title "Colour Changer"}
btn = TkButton.new(root) do
  width 5                       # it was hard to see
  height 2
  text "Click"
  underline 0
  font TkFont.new('sans-serif 24') # for better visibility
  command { change_colour(btn) }
  pack('side'=>'left', 'padx'=>10, 'pady'=>10)  
end
root.bind("Control-c") {change_colour(btn)}
root.bind("Control-x") {exit}

def change_colour(w)
  cur_col =  w.cget('background')
  new_col = ""
  puts "current active background colour: #{w.cget('activebackground')}"
  puts "current background colour: #{cur_col}"

  case cur_col
  when "red"
    new_col = 'yellow'
  when "yellow"
    new_col = 'blue'
  when "blue"
    new_col = 'red'
  else
    new_col = 'red'
  end
  w.configure('activebackground',cur_col)
  w.configure('background',new_col)
  puts "new active background colour: #{cur_col}"
  puts "new background colour: #{new_col}"
end

Tk.mainloop
