#!/usr/bin/env ruby

# ZetCode Ruby Qt tutorial
#
# This program creates a quit
# button. When we press the button,
# the application terminates. 
#
# author: Jan Bodnar
# website: www.zetcode.com
# last modified: September 2012

require 'Qt'

class QtApp < Qt::Widget

    def initialize
        super
        
        setWindowTitle "Quit button"
        
        init_ui
        
        resize 250, 150
        move 300, 300

        show
    end
    
    def init_ui    
        quit = Qt::PushButton.new 'Quit', self
        quit.resize 80, 30
        quit.move 50, 50
        connect quit, SIGNAL('clicked()'), $qApp, SLOT('quit()')
    end
    
end

app = Qt::Application.new ARGV
QtApp.new
app.exec
