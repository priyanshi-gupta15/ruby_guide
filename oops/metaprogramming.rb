# metaprogramming is a powerful technique in Ruby that allows you to write code that modifies itself at runtime. It enables dynamic method creation, altering class behavior on the fly, and defining methods based on runtime conditions.

# Used in frameworks like Rails, where methods like belongs_to and has_many are dynamically created.

# Why Use Metaprogramming?
# ✅ Less repetitive code – You can generate methods dynamically instead of defining them manually.
# ✅ Flexible and dynamic behavior – Useful in libraries, DSLs (Domain-Specific Languages), and web frameworks.
# ✅ Code efficiency – Enables writing shorter, cleaner, and more maintainable code.




# 2️⃣ Key Concepts in Metaprogramming
# 1. send Method – Calling Methods Dynamically
# The send method allows us to call a method by name as a string or symbol.


class Person
  def greet
    "Hello!"
  end
end

person = Person.new
puts person.send(:greet)  # Calls greet method dynamically
# 👉 Use case: Sending method calls dynamically in Rails controllers.

# 2. Defining Methods Dynamically (define_method)
# Instead of writing repetitive methods, we use define_method to generate them dynamically.


class Animal
  %w(dog cat lion).each do |animal|
    define_method("speak_#{animal}") do
      "#{animal.capitalize} says Woof!" if animal == "dog"
      "#{animal.capitalize} says Meow!" if animal == "cat"
      "#{animal.capitalize} says Roar!" if animal == "lion"
    end
  end
end

a = Animal.new
puts a.speak_lion  # "Dog says Woof!"
puts a.speak_cat  # "Cat says Meow!"
 puts a.speak_lion # "Lion says Roar!"
# 👉 Use case: Creating dynamic getters and setters in ActiveRecord models.'



# 3. method_missing – Handling Undefined Methods
# When a method is called that doesn’t exist, method_missing is triggered.


class Ghost
  def method_missing(name, *args)
    "There's no method called #{name}, but I'm handling it!"
  end
end

g = Ghost.new
puts g.fly  # "There's no method called fly, but I'm handling it!"
# 👉 Use case: Handling unknown routes in web frameworks.


# 4. respond_to_missing? – Checking if a Method Exists
# When using method_missing, it’s good practice to implement respond_to_missing?.


class SmartObject
  def method_missing(name, *args)
    "I can handle #{name} dynamically!"
  end

  def respond_to_missing?(name, include_private = false)
    true  # Always returns true as we handle all missing methods
  end
end

obj = SmartObject.new
puts obj.anything  # "I can handle anything dynamically!"
puts obj.respond_to?(:unknown_method)  # true
# 👉 Use case: API calls that map unknown method names to API endpoints.



# 5. class_eval & instance_eval – Changing Class and Object Definitions
# class_eval modifies the class itself.
# instance_eval modifies a specific instance.

class Car
end

Car.class_eval do
  def drive
    "Car is moving!"
  end
end

puts Car.new.drive  # "Car is moving!"

car = Car.new
car.instance_eval do
  def stop
    "Car stopped!"
  end
end

puts car.stop  # "Car stopped!"
# 👉 Use case: Modifying objects dynamically in runtime configurations.




class Robot
  ["walk", "talk", "run"].each do |action|
    define_method(action) do
      puts "Robot is #{action}ing!"
    end
  end
end

r = Robot.new
r.walk  # ✅ Robot is walking!
r.talk  # ✅ Robot is talking!
r.run   # ✅ Robot is running!


# ==================================================

class Animal
  SOUNDS = [:bark, :meow, :roar]  # Allowed methods

  SOUNDS.each do |sound|
    define_method(sound) do
      puts "The animal makes a #{sound} sound!"
    end
  end

  # Handle undefined methods
  def method_missing(method_name, *args)
    if SOUNDS.include?(method_name)
      super  # If it somehow reaches here, let Ruby handle it normally.
    else
      raise NoMethodError, "Undefined method '#{method_name}' for #{self.class}. Allowed methods: #{SOUNDS.join(', ')}"
    end
  end
end

a = Animal.new
a.bark  # ✅ Output: The animal makes a bark sound!
a.meow  # ✅ Output: The animal makes a meow sound!
a.roar  # ✅ Output: The animal makes a roar sound!
a.fly   # ❌ Raises: NoMethodError: Undefined method 'fly' for Animal. Allowed methods: bark, meow, roar






# ============================================
# Introspection: Checking Object Properties at Runtime
# Ruby allows checking whether an object supports a method before calling it.


class Car
  def drive
    puts "Driving..."
  end
end

car = Car.new
puts car.respond_to?(:drive)  # Output: true
puts car.respond_to?(:fly)    # Output: false



#  Singleton Classes and Eigenclasses
# Every Ruby object has a hidden singleton class where unique methods can be added.

# Example: Defining a Singleton Method
dog = "Buddy"

def dog.speak
  puts "Woof! I'm #{self}."
end

dog.speak  # Output: Woof! I'm Buddy.
# 🔹 Why use singleton methods?

# Add methods to one specific object
# Used in class-level methods (like self.method_name)

class Cat
  class << self
    def species
      "Feline"
    end
  end
end

puts Cat.species  # Output: Feline
# 🔹 Why use eigenclasses?

# Define class methods

# Modify a class without affecting other instances


