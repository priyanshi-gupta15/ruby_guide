# Ruby is a pure object-oriented language, meaning everything is an object. OOP helps in writing clean, reusable, and structured code.! 

# 1️⃣ What is a Class?
# A class is a blueprint for creating objects. It defines attributes (variables) and behaviors (methods).

class ClassName
  # Attributes & Methods
end

class Car
  def start
    puts "Car is starting..."
  end
end

my_car = Car.new  # Create an object
my_car.start  # Output: Car is starting...



# 2️⃣ Instance Variables (@variable)
# Instance variables store object-specific data.

class Person
  def initialize(name, age)
    @name = name  # Instance variable
    @age = age    # Instance variable
  end

  def introduce
    puts "Hi, I'm #{@name} and I'm #{@age} years old."
  end
end

p1 = Person.new("Alice", 25)
p1.introduce  # Output: Hi, I'm Alice and I'm 25 years old.
# 🔹 initialize → Constructor method, called when creating an object.
# 🔹 @name → Instance variable, unique for each object.



# 3️⃣ Getters & Setters (attr_reader, attr_writer, attr_accessor)
# By default, instance variables cannot be accessed directly outside the class.

# Without Getters & Setters:

# class Book
#   def initialize(title)
#     @title = title
#   end
# end

# b = Book.new("Ruby Basics")
# puts b.title  # ❌ ERROR: No method `title`
# With Getters & Setters:

class Book
  def initialize(title)
    @title = title
  end

  def title  # Getter
    @title
  end

  def title=(new_title)  # Setter
    @title = new_title
  end
end

b = Book.new("Ruby Basics")
puts b.title  # ✅ Output: Ruby Basics

b.title = "Advanced Ruby"
puts b.title  # ✅ Output: Advanced Ruby

# Using attr_reader, attr_writer, attr_accessor (Best Practice)

class Book
  attr_accessor :title  # Creates getter & setter automatically

  def initialize(title)
    @title = title
  end
end

b = Book.new("Ruby Basics")
puts b.title  # ✅ Output: Ruby Basics
b.title = "Advanced Ruby"
puts b.title  # ✅ Output: Advanced Ruby

# 🔹 attr_reader → Read-only (getter).
# 🔹 attr_writer → Write-only (setter).
# 🔹 attr_accessor → Read & Write.


# 4️⃣ Class Methods (self.method_name)
# Class methods belong to the class itself, not an instance.


class MathHelper
  def self.square(x)
    x * x
  end
end

puts MathHelper.square(5)  # Output: 25
# 🔹 self.square → Defines a class method.


# 5️⃣ Inheritance (Code Reusability)
# Inheritance allows a child class to inherit features of a parent class.


class Animal
  def speak
    puts "Animal makes a sound!"
  end
end

class Dog < Animal  # Dog inherits from Animal
  def speak
    puts "Woof! Woof!"
  end
end

animal=Animal.new
animal.speak

dog = Dog.new
dog.speak  # Output: Woof! Woof!
# 🔹 < Animal → Dog inherits from Animal.
# 🔹 Method Overriding → Child class overrides parent method.


# 6️⃣ super Keyword (Calling Parent Method)
# super calls the parent class method from the child class.


class Animal
  def speak
    puts "Animal sound!"
  end
end

class Dog < Animal
  def speak
    super  # Calls Animal's speak method
    puts "Bark! Bark!"
  end
end

dog = Dog.new
dog.speak
# Output:
# Animal sound!
# Bark! Bark!
# 🔹 super → Calls the parent method before adding new behavior.

# 7️⃣ Polymorphism (Method Overriding)
# Different classes can have the same method name but different behaviors.

class Bird
  def sound
    puts "Chirp!"
  end
end

class Cat
  def sound
    puts "Meow!"
  end
end

animals = [Bird.new, Cat.new]
animals.each { |animal| animal.sound }
# Output:
# Chirp!
# Meow!
# 🔹 Each object responds differently to the sound method.

# 8️⃣ Encapsulation (Hiding Data)
# Encapsulation restricts direct access to certain variables/methods.

# Private & Protected Methods

class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def display_balance
    puts "Your balance is $#{@balance}"
  end

  private  # Below methods are private

  def secret_code
    puts "Secret code: 1234"
  end
end

acc = BankAccount.new(500)
acc.display_balance  # ✅ Output: Your balance is $500
acc.secret_code  # ❌ ERROR: Private method
# 🔹 private methods cannot be accessed outside the class.

# 9️⃣ Modules & Mixins (include, extend)
# Modules help organize code and avoid duplication.


module Greetings
  def greet
    puts "Hello, welcome!"
  end
end

class User
  include Greetings  # Adds methods to instances
end

u = User.new
u.greet  # Output: Hello, welcome!
# 🔹 include → Adds module methods as instance methods.



# 🔟 OOP Best Practices
# ✔ Use meaningful class names (User, Order, Product)
# ✔ Keep classes focused on one responsibility (Single Responsibility Principle - SRP).
# ✔ Use attr_accessor instead of manual getters & setters.
# ✔ Use modules for shared functionality.
# ✔ Follow naming conventions (CamelCase for classes, snake_case for methods).

