# Defining a Method
# Syntax:
# def method_name(parameters)
#   # Code inside the method
#   return value  # Optional: Returns a value
# end

def greet(name)
  puts "hello #{name}!"
  
end

greet("friends")
# 

                                  # Method with Default Parameter
def greet1(name = "freinds")
  puts "hello #{name}!"
  
end

# calling a method
greet1("priyanshi") #hello priyanshi!

greet1  #hello freinds!

                                       # returning values

def add(a, b)
  #a+b    #implicit return
  return a + b   #explicit return
end

puts add(3, 4)  # Output: 7


                                 #  Methods with Variable Arguments (*args)
# To accept any number of arguments, use *args:

def sum(*numbers)
  numbers.sum
end

puts sum(1, 2, 3, 4)  # Output: 10
puts sum(10, 20)  # Output: 30
# 🔹 *numbers → Converts multiple arguments into an array.


# Methods with Named Arguments (keyword arguments)

def introduce(name:, age:)
  "My name is #{name}, and I am #{age} years old."
end

puts introduce(name: "Alice", age: 25)
# 🔹 This forces the caller to explicitly specify parameter names.