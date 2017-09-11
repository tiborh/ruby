#!/usr/bin/env ruby

# source: http://rubylearning.com/satishtalim/ruby_tk_tutorial.html
# never worked:
# /usr/lib/ruby/vendor_ruby/soap/rpc/httpserver.rb:20:in `<module:RPC>': uninitialized constant Logger::Application (NameError)

abort("faulty code")

require 'logger'  
require 'soap/rpc/standaloneServer'  
  
class MyServer < SOAP::RPC::StandaloneServer  
  def initialize(* args)  
    super  
    add_method(self, 'sayhelloto', 'username')  
    @log = Logger.new("soapserver.log", 5, 10*1024)
  end  
  
  def sayhelloto(username)  
    t = Time.now  
    @log.info("#{username} logged on #{t}")  
    "Hello, #{username} on #{t}."  
  end  
end  
  
server = MyServer.new('PuneRubyServer','urn:mySoapServer','www.puneruby.com',12321)  
trap('INT') {server.shutdown}  
server.start  
