
# 🔹 Practical Mini Project: Simple Form Validator
# A real-world user registration validator that checks email, phone number, username, and password.


def validate_registration(email, phone, username, password)
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  phone_regex = /\A\d{3}-\d{3}-\d{4}\z/
  username_regex = /\A[a-zA-Z0-9_]{3,15}\z/
  password_regex = /\A(?=.*\d)(?=.*[A-Z])(?=.*[\W_]).{8,}\z/

  errors = []
  errors << "Invalid Email!" unless email.match?(email_regex)
  errors << "Invalid Phone Number!" unless phone.match?(phone_regex)
  errors << "Invalid Username!" unless username.match?(username_regex)
  errors << "Weak Password!" unless password.match?(password_regex)

  if errors.empty?
    puts "✅ Registration Successful!"
  else
    puts "❌ Registration Failed:"
    errors.each { |error| puts "- #{error}" }
  end
end

# Example Usage
validate_registration("test@example.com", "123-456-7890", "user_123", "Password1!")
# ✅ Registration Successful!
