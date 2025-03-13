
# Ruby does not support abstract classes directly like Java, but we can simulate it using raise NotImplementedError.

  # Using Modules for Abstraction (Mixins)
# Modules help abstract common behavior that can be reused across multiple classes.

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

