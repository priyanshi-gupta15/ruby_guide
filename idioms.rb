
# Ruby is known for its elegant, expressive, and readable code. These idioms help you write clean, "Ruby-ish" code (often called "Rubyic").

# ✅ 1. Use Symbol-to-Proc (&:method)
# Instead of:


["hello", "world"].map { |w| w.upcase }

# Use:


["hello", "world"].map(&:upcase)
# => ["HELLO", "WORLD"]

# 🔍 It’s shorter and more readable when you’re calling a method on each element.

# ✅ 2. Safe Navigation Operator (&.)
# Avoid this:


user && user.profile && user.profile.bio
# Do this:

user&.profile&.bio
# 📌 Prevents NoMethodError if nil appears anywhere in the chain.


# ✅ 3. Use fetch for Hashes when needed
person = { name: "Alice" }

puts person[:name]            # => "Alice"
puts person.fetch(:name)      # => "Alice"
puts person.fetch(:age, 0)    # => 0 (default)
# Why use fetch?
# Because person[:age] returns nil, but fetch can raise errors or give defaults — safer for debugging!


# ✅ 4. Use ||= for Memoization

def expensive_computation
  @result ||= compute_something
end
# 💡 Avoids recomputing if already stored.M