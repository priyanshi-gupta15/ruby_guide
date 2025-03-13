# Create a Car class with attributes brand and model, and a method to display details.





class Cars
  def initialize(name,model)
    @name = name
    @model = model
    
  end

  def car_details
    puts "this is my #{@name} and its model is #{@model} "
  end
end
car1=Cars.new("toyota" , "corola")
car1.car_details


#  Create a Student class with a method to set and get student details.
class Student
  def initialize(name, age)
    @name = name
    @age = age
  end

  def get_details
    puts "Student Name: #{@name}, Age: #{@age}"
  end
end

student1 = Student.new("Priyanshi", 20)
student1.get_details






class Animal
  def initialize(name)
    @name = name
  end

  def info
    puts "This is an animal named #{@name}."
  end
end

class Dog < Animal
  def bark
    puts "#{@name} says: Woof! Woof!"
  end
end

dog = Dog.new("Buddy")
dog.info   # Output: This is an animal named Buddy.
dog.bark  

# Implement method overriding in a subclass.
class Honey 
  def taste
    puts "taste is too sweat"
    
  end
end

class Comb < Honey 
  def taste 
    puts "taste like comb"
  end
end
obj1 = Honey.new()
obj1.taste
obj = Comb.new()
obj.taste
  