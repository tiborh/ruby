#!/usr/bin/env ruby

require 'tk'

# source https://www.tutorialspoint.com/ruby/ruby_tk_guide.htm
# with slight modifications

root = TkRoot.new do
  minsize(300,200)              # without this, the window was tiny
  title "Hello, World!"
end
root['geometry'] = '300x200-100+100' # place it 100px from top and same from right
TkLabel.new(root) do
   text 'Hello, World!'
   pack { padx 15 ; pady 15; side 'left' } # side: pack order, not placement
end
Tk.mainloop
