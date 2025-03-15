# Design patterns are best practices used to solve common software design problems. They improve code reusability, maintainability, and scalability.


# There are 3 main categories of design patterns:
# 1️⃣ Creational Patterns → Object creation strategies
# 2️⃣ Structural Patterns → How objects are structured
# 3️⃣ Behavioral Patterns → How objects communicate





# 1. Factory Pattern – Object Creation with Flexibility
# Encapsulates object creation, allowing dynamic object instantiation.


class Animal
  def self.create(type)
    case type
    when :dog then Dog.new
    when :cat then Cat.new  # symbol is used to define symbols ,Faster and more readable than using strings.


    else raise "Unknown animal type"
    end
  end
end

class Dog
  def speak
    "Woof!"
  end
end

class Cat
  def speak
    "Meow!"
  end
end

animal = Animal.create(:cat)
puts animal.speak  # "Woof!"
# 👉 Use case: Creating objects dynamically based on input (e.g., API response handling).



class Animal
  [:bark, :meow, :roar].each do |sound|
    define_method(sound) do
      puts "The animal makes a #{sound} sound!"
    end
  end
end


animal = Animal.new
animal.meow
animal.ror