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


# Raising Exceptions // custom exception
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
# Output:


# Caught a custom exception: Something went wrong!



# 🔹  ensure: Always runs (Cleanup Code)
# The ensure block always runs, whether an exception occurs or not.
# This is useful for cleaning up resources (like closing files or releasing memory).


begin
  file = File.open("data.json")
  puts "reding a file"
rescue
  puts "File not found!"
ensure
  puts "Closing file..."
  file.close if file
end




# ✅ Good Practice (Using Logger)

require 'logger'

logger = Logger.new("error.log")  # ✅ Save logs to a file

begin
  num = 10 / 0
rescue ZeroDivisionError => e
  logger.error("ZeroDivisionError: #{e.message}")  # ✅ Log the error
  puts "An error occurred. Check the log file for details."
end


# 📌  Best Practices in Exception Handling
# ✔ Handle only expected exceptions. Avoid generic rescue (it hides real bugs).
# ✔ Use ensure to clean up resources (closing files, releasing memory).
# ✔ Log errors instead of just printing them (logger.error).
# ✔ Raise meaningful exceptions (raise ArgumentError, "Invalid input")
# ✔ Avoid swallowing errors silently. Always log or display a message.