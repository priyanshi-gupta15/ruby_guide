# exception handling in Ruby is done using the (begin, rescue, ensure, and else) keywords. It allows your program to handle errors gracefully without crashing.


# begin
#   # Code that may raise an exception
#   num = 10 / 0  # This will raise a ZeroDivisionError
# rescue ZeroDivisionError => e
#   puts "Error: #{e.message}"
# end


# Multiple Rescue Blocks
# You can handle different types of exceptions separately.

begin
  arr = [1, 2, 3]
  puts arr[10]  # This will raise an IndexError
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
rescue IndexError
  puts "Invalid array index!"
end


# Using begin-rescue Blocks

begin
  puts 10 / 0  # Raises ZeroDivisionError
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
rescue StandardError => e
  puts "An error occurred: #{e.message}"
else
  puts "Executed when no error occurs."
ensure
  puts "This always runs, regardless of errors."
end
# 🔹 rescue catches specific errors.
# 🔹 else executes if no exception occurs.
# 🔹 ensure always runs (e.g., for closing files).


# Raising Exceptions
# You can manually raise exceptions using raise.

def check_age(age)
  raise "Age must be greater than 18" if age < 18
  puts "Access granted!"
end

begin
  check_age(16)
rescue => e
  puts "Exception: #{e.message}"
end


# Custom Exception Classes
# You can define custom exceptions by subclassing StandardError.

class MyCustomError < StandardError; end

def risky_method
  raise MyCustomError, "Something went wrong!"
end

begin
  risky_method
rescue MyCustomError => e
  puts "Caught a custom exception: #{e.message}"
end
Output:


# Caught a custom exception: Something went wrong!