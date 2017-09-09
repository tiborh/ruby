#!/usr/bin/env ruby

require_relative "hello"
include Hello

Hello.hello
Hello.hello("you")
Hello.hello "tib"
