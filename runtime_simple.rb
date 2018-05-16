#!/usr/bin/env ruby

def exec_time(proc)
  t0 = Time.now
  proc.call
  t1 = Time.now
  return (t1-t0).abs
end

