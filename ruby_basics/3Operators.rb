puts 5 + 3  # Addition (8)
puts 5 - 3  # Subtraction (2)
puts 5 * 3  # Multiplication (15)
puts 5 / 2  # Integer Division (2)
puts 5.0 / 2  # Float Division (2.5)
puts 5 % 2  # Modulus (1)
puts 5**2   # Exponentiation (25)


#  taking input in ruby using{gets}

puts "Enter first number: "
num1 = gets.chomp.to_i  # Read input, remove newline, convert to integer

puts "Enter second number: "
num2 = gets.chomp.to_i  # Read input, remove newline, convert to integer

sum = num1 + num2
puts "The sum is: #{sum}"



# ==> why we converted into integrer

   # When you take input using gets, it always returns a string. So, if you don’t convert it to an integer, Ruby will treat it as a string, and the + operator will perform string concatenation instead of addition.


   ## Comparison Operators

puts 5 == 3   # false
puts 5 != 3   # true
puts 5 > 3    # true
puts 5 < 3    # false
puts 5 >= 5   # true
puts 5 <= 3   # false
 
   #Logical Operators
   
puts true && false   # false
puts true || false   # true
puts !true           # false
