# Numbers as Objects
# In many languages, numbers are treated as primitives, but in Ruby, they are objects!

puts 10.class       # Output: Integer
puts 10.5.class     # Output: Float
puts 10.even?       # Output: true
puts 5.next         # Output: 6
puts -10.abs        # Output: 10
# 
num = 7
puts num.to_f       # Converts to float (Output: 7.0)
puts num.to_s       # Converts to string (Output: "7")
puts num ** 2       # Exponentiation (Output: 49)



##  string as object
str = "hello"
puts str.class        # Output: String
puts str.upcase       # Output: "HELLO"
puts str.reverse      # Output: "olleh"
puts str.length       # Output: 5
puts str.include?("he")  # Output: true


  ## array as object

arr = [1, 2, 3]
puts arr.class      # Output: Array
puts arr.length     # Output: 3
puts arr.first      # Output: 1
puts arr.last       # Output: 3
puts arr.reverse    # Output: [3, 2, 1]


 # Hashes as Objects

 #Methods as Objects

def greet
  puts "Hello, Ruby!"
end

greet_method = method(:greet)
greet_method.call  # Output: Hello, Ruby!


 #Classes as Objects
 class Car
 end
 
 puts Car.class  # Output: Class

 # Since classes are objects, you can store them in variables:

vehicle = Car.new
puts vehicle.class  # Output: Car
 


## Everything Inherits from Object
# All objects in Ruby inherit from the Object class, and at the very top of Ruby’s object hierarchy is BasicObject.
puts 10.is_a?(Object)       # Output: true
puts "hello".is_a?(Object)  # Output: true
puts [].is_a?(Object)       # Output: true


# You can check the ancestor chain:
puts 10.class.ancestors
# Output: [Integer, Numeric, Comparable, Object, Kernel, BasicObject]




##    Custom Objects (Creating Your Own)

class Animal
  def speak
    puts "I am an animal!"
  end
end

dog = Animal.new
dog.speak  # Output: I am an animal!
