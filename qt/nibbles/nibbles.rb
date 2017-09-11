#!/usr/bin/env ruby

# ZetCode Ruby Qt tutorial
#
# In this program, we create
# a Nibbles game clone.
#
# author: Jan Bodnar
# website: www.zetcode.com
# last modified: September 2012

require 'Qt'
require_relative "nibbles_board"
#require 'Board'

class QtApp < Qt::MainWindow
    
    def initialize
        super
        
        setWindowTitle "Nibbles"
       
        setCentralWidget Board.new(self)
       
        resize 310, 310
        move 300, 300

        show
    end
end

app = Qt::Application.new ARGV
QtApp.new
app.exec
