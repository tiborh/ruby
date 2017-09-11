#!/usr/bin/env ruby

# source: http://rubylearning.com/satishtalim/ruby_tk_tutorial.html

require 'tk'  
hello = TkRoot.new do  
  title "Hello World"  
  # the min size of window  
  minsize(400,400)  
end  
TkLabel.new(hello) do  
  text 'Hello World'  
  foreground 'red'  
  pack { padx 15; pady 15; side 'left'}  
end  
Tk.mainloop

# what you get:
# window with label with red text
