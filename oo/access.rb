#!/usr/bin/env ruby

# not enough knowledge yet to distinguish between private and protected methods

class A
  public
  def meth1
    puts "meth1 has been called in #{self.class}"
  end
  protected
  def meth2(name)
    @name = name
    puts "meth2 has been called in #{self.class} (@name == #{@name})"
  end
  private
  def meth3(name)
    @name = name
    puts "meth3 has been called in #{self.class} (@name == #{@name})"
  end
end

class B < A
  public
  def meth1
    super()
    puts "slight change in meth1"
  end
  protected
  def meth2(name)
    super(name)
    puts "@name == #{@name}"
  end
  private
  def meth3(name)
    super(name)
    puts "@name == #{@name}"
  end
  def method_missing(m, *args, &block)
    puts "Name called: #{m}"
    puts "Args used: #{args}"
    puts "Block given: #{block}"
    raise NoMethodError, "no method or no access to it"
  end
end
    

a1 = A.new()
a1.meth1
begin
  a1.meth2
rescue NoMethodError => err
  puts "class A responds to meth2 call with NoMethodError: #{err}"
end
begin
  a1.meth3
rescue NoMethodError => err
  puts "class A responds to meth3 call with NoMethodError: #{err}"
end

b1 = B.new()
b1.meth1
begin
  b1.meth2
rescue NoMethodError => err
  puts "class B responds to meth2 call with NoMethodError: #{err}"
end
begin
  b1.meth3
rescue NoMethodError => err
  puts "class B responds to meth3 call with NoMethodError: #{err}"
end
