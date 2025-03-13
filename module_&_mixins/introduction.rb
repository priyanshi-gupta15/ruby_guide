# Ruby modules provide a way to group related methods together for code reusability and namespacing. They cannot be instantiated like classes but can be included or extended in other classes.

module Greet
  def say_hello
    "Hello from the module!"
  end
end


#  include vs extend
# include adds module methods as instance methods in a class.
# extend adds module methods as class methods in a class.




class Person
  include Greet  # Adds 'say_hello' as an instance method
end

class Robot
  extend Greet  # Adds 'say_hello' as a class method
end



person = Person.new
puts person.say_hello   # ✅ Works (instance method)

# puts Robot.new.say_hello   # ❌ Error: NoMethodError
puts Robot.say_hello   # ✅ Works (class method)


Namespaces in Modules
Modules help organize code and avoid name conflicts by acting as namespaces.

# Example: Using a Namespace

module MathTools
  class Calculator
    def add(a, b)
      a + b
    end
  end
end

calc = MathTools::Calculator.new  # Using the namespace
puts calc.add(5, 3)  # Output: 8
MathTools::Calculator prevents conflicts with other Calculator classes.
This is useful when working with large projects or third-party libraries.


# Mixin Concept in Ruby
# Mixins allow multiple inheritance in Ruby (since Ruby doesn’t support multiple inheritance like C++).

# Instead of inheriting from multiple classes, we use modules as mixins.



#  Mixins allow multiple inheritance-like behavior.