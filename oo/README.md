# Object Oriented Programming in Ruby

## next to explore:

* http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html

## Some key facts:

* Almost everything is an object.
  * Exceptions: control structures and blocks
  * blocks can be objectified with Proc object
* Only single inheritance is supported
* There are no abstract/template/interface classes

## Load or Require?

* `load` to load the content of another file
* `require` to load only if not already loaded

## Variables/Attributes

* class variables: `@@var`
* instance variables: `@var`

## Methods

* default values can be set

### Significant Method Names

* `initialize()` is the method used to create an instance
* `method_missing` called when an undefined method is used

### Attrib Order, Mandatoriness, Optionalness

* `def method_name(var1:val1, var2:val2)` type argument list can create a free order
  * if default value is not given, only the obligatoriness is set
* variable length arguments are handled with splats: `def method(var1:,var2:,*optvars)`

### Getters/Setters

* in instances, they are handled with the following:
  * `attr_accessor :var1, :var2`
  * `attr_reader :var3`
  * `attr_writer :var4`
* in classes, they are still needed.
```ruby
def self.var
    return var
end
```

### Accessibility

Default is `public`.

Public/Private/Protected can be used either C++ style, or in the following way:

```ruby
class C1
      def m1
      ...
      end

      def m2
      ...
      end

      def m3
      ...
      end

      def m4
      ...
      end

      private: m1
      protected: m2
      public: m3,m4

end
```
**Note:** There is an important difference from the way Java or C++ works. `private` in Ruby is similar to `protected` in Java/C++ in that subclasses have access to the method. In Ruby, there is no way to restrict access to a method from its subclasses like you can with `private` in Java. (See https://stackoverflow.com/questions/3534449/why-does-ruby-have-both-private-and-protected-methods)

#### Original list in the above:

* `public` - can be accessed by any object (e.g. `Obj.new.public_method`)
* `protected` - can only be accessed from within the object itself, as well as any subclasses
  protected methods can be called by any instance of the defining class or its subclasses.
* `private` - same as protected, but the method doesn't exist in subclasses
  private methods can be called only from within the calling object (`self.xx`). You cannot access another instance's private methods directly.

## Inheritance

* only single inheritance
  * `class ChildClass < ParentClass`
  * `super` is the same as in Java
* modules (or mixins) can help
  * `include`: to instance methods
  * `extend`: to class methods
  * `require`: makes them available in the class (so needed to any of the above if the module is in a separate file)
  * the `Comparable` module is also used as a mixin, and functions like an interface in Java: the comparison operator (`<=>`) needs to be implemented for comparisons to work. However, missing implementations do not give such clear error messages as Java. (e.g. `<': comparison of ____ with ____ failed (ArgumentError))

### Singleton Classes and Methods

They have no effect on the class or superclass, only on a single object.

```ruby
require_relative "person"

p1 = Person.new("Zoe","f","zoe@mail.co.uk")

def p1.print_data
  puts "id:     #{Person.count}"
  puts "name:   #{name}"
  puts "gender: #{gender}"
  puts "e-mail: #{email}"
end

p1.print_data
```

This example also acceptable:

```ruby
class << someinstance
  def foo
    "Hello."
  end
end
```
### Modify a Module or Class (Polymorphism)

It is easy to modify a class or module. If you `require` its file and declare it again, the methods and variables you add, will be part of the class or module if the modifier file is `require`d instead of the original.

```ruby
# in greeter.rb:

class Greeter
  def initialize(name = "World")
    @name = name.capitalize
  end
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions
  g1 = Greeter.new("Abe")
  assert_false g1.respond_to?("name")
  assert_false g1.respond_to?("name=")
end

# in greeter2.rb:

require_relative "greeter"

# add an accessor
class Greeter
  attr_accessor :name
end

if __FILE__ == $0
  require 'test/unit'
  extend Test::Unit::Assertions
  g1 = Greeter.new("Eve")
  assert_true g1.respond_to?("name")
  assert_true g1.respond_to?("name=")
end

# in greeter3.rb:

require_relative "greeter2"
require 'test/unit'
extend Test::Unit::Assertions

g1 = Greeter.new("Ada")
assert_true g1.respond_to?("name")
assert_true g1.respond_to?("name=")
```

## Sources

* The Ruby Way, 3rd edition
* https://www.devalot.com/articles/2008/09/ruby-singleton
