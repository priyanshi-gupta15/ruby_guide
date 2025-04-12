def greet
  puts "Hello"
  yield if block_given?
  puts "Goodbye"
end

greet { puts "This is a block!" }


# practice questions
# 1. Write a method that takes a block and calls it twice.

def call_twice
  yield
  yield
end

call_twice { puts "Hello from the block!" }

# 2. Create a method that prints a message before and after a block:

def intro 
  puts "starting"
  yield if block_given?
  puts "ending"
end

intro{puts "i am inside the block"}


# 3. Method with a block that receives an argument:

def greet_person
  yield("Priya")
end

greet_person { |name| puts "Hello, #{name}!" }
