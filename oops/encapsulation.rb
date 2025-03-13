# What is Encapsulation?
# Encapsulation is the hiding of data (variables) within a class to protect it from unintended modifications. It allows controlled access to the internal state of an object by providing methods (getters & setters) to interact with it.

# Encapsulation helps in:
# ✔️ Data Protection: Prevents direct modification of instance variables.
# ✔️ Code Maintainability: Changes in internal logic do not affect other parts of the program.
# ✔️ Modular Code: Makes debugging easier by keeping related code together.


class Car
  def initialize(brand, model)
    @brand = brand  # Private instance variable
    @model = model  # Private instance variable
  end

  def details
    puts "This is a #{@brand} #{@model}."
  end
end

car = Car.new("Toyota", "Corolla")
car.details   # ✅ Output: This is a Toyota Corolla.

# ❌ Direct access will give an error:
# puts car.@brand  # ERROR: private method




# using Getter and Setter Methods
# To allow controlled access to instance variables, we use:

# Getter Methods (attr_reader) → Read data
# Setter Methods (attr_writer) → Modify data
# Both (attr_accessor) → Read and Write

class Employee
  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  # Getter method for name (read-only)
  def name
    @name
  end

  # Getter method for salary
  def salary
    @salary
  end

  # Setter method for salary (controlled modification)
  def update_salary(new_salary)
    if new_salary > 0
      @salary = new_salary
      puts "New salary updated to $#{@salary}"
    else
      puts "Invalid salary amount!"
    end
  end
end

emp = Employee.new("Priyanshi", 50000)
puts emp.name     # ✅ Output: Priyanshi
puts emp.salary   # ✅ Output: 50000

emp.update_salary(60000) # ✅ New salary updated to $60000
emp.update_salary(-1000) # ❌ Invalid salary amount!
# ✔️ Encapsulation ensures the salary is only modified through update_salary, which adds a validation check.





class Student
  attr_reader :name  # Read-only
  attr_accessor :grade  # Read & Write

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

s = Student.new("Alice", "A")
puts s.name    # ✅ Output: Alice
puts s.grade   # ✅ Output: A

s.grade = "B+"  # ✅ Modifying grade
puts s.grade   # ✅ Output: B+

# s.name = "Bob"  # ❌ Error! (name is read-only)




class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def check_balance
    puts "Your balance is: $#{@balance}"
  end

  private  # Everything below is private

  def secret_method
    puts "This is a private method."
  end
end

account = BankAccount.new(1000)
account.check_balance  # ✅ Works fine

# ❌ Trying to access private method:
# account.secret_method  # ERROR: private method `secret_method' called
# ✔️ Private methods can only be called inside the class and are hidden from the outside world.


# Abstract class (Using a module for abstraction)
module Sound
  def speak
    raise NotImplementedError, "Subclasses must implement the 'speak' method"
  end
end

# Parent class
class Animal
  include Sound  # Abstraction using module

  def initialize(name)
    @name = name  # Instance variable (Encapsulation)
  end

  def info
    "I am an animal named #{@name}"
  end

  private  # Private method (Encapsulation)
  
  def secret_identity
    "I have a secret!"
  end
end

# Child class inheriting from Animal
class Dog < Animal
  def speak
    "Woof! Woof!"  # Method overriding (Polymorphism)
  end

  protected  # Protected method (Encapsulation)
  
  def dog_secret
    "Only dogs can know this!"
  end
end

# Creating instances
dog = Dog.new("Buddy")

# Method calls
puts dog.info       # I am an animal named Buddy
puts dog.speak      # Woof! Woof!

# Private and protected methods cannot be called directly
#  puts dog.secret_identity  # Will raise an error
# puts dog.dog_secret       # Will raise an error
