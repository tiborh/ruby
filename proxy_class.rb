#!/usr/bin/env ruby

class Proxy
  attr_reader :messages
  
  def initialize(target_object)
    @object = target_object
    @messages = []
    @msg_stat = Hash.new(0)
  end

  def called?(method_name)
    @messages.include? method_name
  end

  def number_of_times_called(method_name)
    @msg_stat[method_name]
  end
  
  def method_missing(method_name, *args, &block)
    @messages.push(method_name)
    @msg_stat[method_name] += 1
    @object.send(method_name,*args,&block)
  end
end

class Television
  attr_accessor :channel

  def power
    if @power == :on
      @power = :off
    else
      @power = :on
    end
  end

  def on?
    @power == :on
  end
end

require 'test/unit'
extend Test::Unit::Assertions

tv0 = Television.new
print "tv0: ",tv0,"\n"
print "on? ",tv0.on?,"\n"
print "power: ",tv0.power,"\n"
print "on? ",tv0.on?,"\n"
tv0.channel = 10
print "channels: ",tv0.channel,"\n"
puts ""

pr0 = Proxy.new(Television.new)
print "pr0: ",pr0,"\n"
assert pr0.instance_of?(Proxy)
print "pr0: ",pr0.on?,"\n"
print "power: ",pr0.power,"\n"
print "on? ",pr0.on?,"\n"
pr0.channel = 10
print "channels: ",pr0.channel,"\n"
print "messages: ",pr0.messages,"\n"
print "on in messages: ",pr0.called?(:on),"\n"
print "on? in messages: ",pr0.called?(:on?),"\n"
print "number of times on? called: ",pr0.number_of_times_called(:on?),"\n"
print "number of times off? called: ",pr0.number_of_times_called(:off?),"\n"

def test_proxy_records_messages_sent_to_tv
    tv = Proxy.new(Television.new)

    tv.power
    tv.channel = 10

    assert_equal [:power, :channel=], tv.messages
end

test_proxy_records_messages_sent_to_tv
