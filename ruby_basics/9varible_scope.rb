# 1. Local Variables
# Defined with a lowercase letter or _ at the beginning.
# Only accessible within the block or method they are declared in.
# They cannot be accessed outside their scope.
# 
def my_method
  local_var = "I'm local"
  puts local_var  # Works inside the method
end

my_method
# puts local_var  # ERROR! Undefined variable


# 2. Global Variables
# Defined using $ at the beginning.
# Accessible from anywhere in the program.
# Generally not recommended because they can be changed from anywhere, leading to unexpected behavior.

$global_var = "I'm global"

def print_global
  puts $global_var  # Accessible inside the method
end

print_global
puts $global_var  # Accessible outside the method too


# 3. Instance Variables
# Defined using @ at the beginning.
# Used inside classes to store object-specific data.
# Accessible within the instance of the class (not shared between objects)

class Person
  def initialize(name)
    @name = name  # Instance variable
  end

  def greet
    puts "Hello, my name is #{@name}."
  end
end

p1 = Person.new("Alice")
p1.greet  # Output: Hello, my name is Alice.

p2 = Person.new("Bob")
p2.greet  # Output: Hello, my name is Bob.


# 4. Class Variables
# Defined using @@ at the beginning.
# Shared among all instances of a class.
# Used to store class-level data.

class Person
  @@count = 0  # Class variable

  def initialize(name)
    @name = name
    @@count += 1  # Increment count for each object
  end

  def self.total_people
    puts "Total people created: #{@@count}"
  end
end

p1 = Person.new("Alice")
p2 = Person.new("Bob")

Person.total_people  # Output: Total people created: 2

# 5. Constants
# Defined with an uppercase letter at the beginning.
# Typically used for values that shouldn’t change.
# Not strictly enforced (you can change them with a warning).

PI = 3.14159
puts PI  # Output: 3.14159

PI = 3.14  # Warning: already initialized constant PI
