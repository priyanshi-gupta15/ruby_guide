
# Ruby does not support abstract classes directly like Java, but we can simulate it using raise NotImplementedError.

  # Using Modules for Abstraction (Mixins)
# Modules help abstract common behavior that can be reused across multiple classes.


# Hiding Complexity & Showing Essentials


module Payment
  def process_payment(amount)
    puts "Processing payment of $#{amount}"
  end
end

class CreditCard
  include Payment
end

class PayPal
  include Payment
end

# Usage
card = CreditCard.new
card.process_payment(100)  # ✅ Output: Processing payment of $100

paypal = PayPal.new
paypal.process_payment(200) # ✅ Output: Processing payment of $200
# ✔️ Hides payment logic inside the Payment module, allowing CreditCard and PayPal to use it.



class Employee
  def initialize(name)
    @name = name
  end

  def work
    raise NotImplementedError, "Subclasses must implement this method"
  end
end

class Developer < Employee
  def work
    puts "#{@name} is writing code!"
  end
end

class Manager < Employee
  def work
    puts "#{@name} is managing projects!"
  end
end

dev = Developer.new("Alice")
mgr = Manager.new("Bob")

dev.work  # ✅ Alice is writing code!
mgr.work  # ✅ Bob is managing projects!
# 📌 NotImplementedError enforces that all subclasses must define work.