#!/usr/bin/env ruby

# ZetCode Ruby Qt tutorial
#
# This program centers a window
# on the screen.
#
# author: Jan Bodnar
# website: www.zetcode.com
# last modified: September 2012

require 'Qt'

WIDTH = 250
HEIGHT = 150

class QtApp < Qt::Widget

    def initialize
        super
        
        setWindowTitle "Center"
        resize WIDTH, HEIGHT
        
        center
        show
    end
    
    def center
        qdw = Qt::DesktopWidget.new

        screenWidth = qdw.width
        screenHeight = qdw.height

        x = (screenWidth - WIDTH) / 2
        y = (screenHeight - HEIGHT) / 2
        
        move x, y
    end
end

app = Qt::Application.new ARGV
QtApp.new
app.exec
