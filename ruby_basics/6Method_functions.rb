def greet(name)
  puts "hello #{name}!"
  
end

greet("friends")
# 

# Method with Default Parameter
def greet1(name = "freinds")
  puts "hello #{name}!"
  
end

greet1("priyanshi") #hello priyanshi!

greet1  #hello freinds!

# returning values

def add(a, b)
  return a + b
end

puts add(3, 4)  # Output: 7

