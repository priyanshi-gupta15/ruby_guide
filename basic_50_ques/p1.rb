# 📌 31-40: Methods & Blocks
# Write a Ruby method that takes two numbers as arguments and returns their sum.
# What are default arguments in Ruby? Write a method with a default argument.
# Write a method that reverses a string without using built-in methods.
# How do you return multiple values from a method in Ruby?
# Write a program that checks if a string is a palindrome.
# Explain the difference between a method and a block in Ruby.
# Write a program that uses a block to iterate over an array.
# What are Proc and Lambda in Ruby? Give an example.
# How do you pass a block to a method? Write an example.
# Write a method that accepts a hash as an argument and prints each key-value pair.


def sum(a,b)
  return a+b
  
end
puts  sum(10,20)


def def_argu(name="priaynshi")
  puts "hello #{name}!"
  
end

def_argu("world")

def rev_str(str)               #method
  reverse =""
  str.each_char {|char|  reverse = char+reverse} #block
  return reverse
end

puts rev_str("hello i am your teacher")


def details
  name = "Priyanshi"
  age = 22
  country = "India"
  return name, age, country  # Returns multiple values as an array
end

# Receiving multiple values
person_name, person_age, person_country = details

puts person_name    # "Priyanshi"
puts person_age     # 22
puts person_country # "India"


def iteration(numbers)

   numbers.each do |num|
     puts "Number: #{num}"
  end
  
end

iteration([1,3,45,6])


def hash_iteration(hash)

   hash.each do |key , value|
     puts "this is key #{key},and its value #{value}"
   end
  
end

hash_iteration({name: "priyanshiu" , age: 13,
city: "jaiour"})




