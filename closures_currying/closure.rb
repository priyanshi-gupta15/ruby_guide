def multiplier(factor)
  return ->(n) { n * factor }
end

doubler = multiplier(2)
tripler = multiplier(3)

puts doubler.call(5)   # => 10
puts tripler.call(6)   # => 15

#  Here, factor is remembered even after multiplier has finished running — that’s a closure in action!



# 💡 Real-World Use Case of Closures
# Closures are great for:
# Memoization
# Caching logic
# Building factory functions
# Managing private state (like in services, initializers, etc.)

# What is a Factory Function in Ruby?
# A factory function is a method (or lambda/proc) that creates and returns objects, usually with some custom configuration or logic.

# Instead of directly using Class.new, you create a function that builds and returns objects — acting like a “factory” for those objects.

#  Why use Factory Functions?
# To abstract complex object creation

# To avoid repeating setup logic

# To encapsulate default values, validations, or setup code

# Useful in test cases (factories for fake data), services, or reusable components

# exmaple of factor function
def user_factory(name, age)
  { name: name, age: age, role: "user" }
end

user1 = user_factory("Alice", 25)
user2 = user_factory("Bob", 30)

puts user1  # => {:name=>"Alice", :age=>25, :role=>"user"}
puts user2  # => {:name=>"Bob", :age=>30, :role=>"user"}