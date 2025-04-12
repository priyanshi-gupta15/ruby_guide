# Currying transforms a method that takes multiple arguments into a sequence of functions, each taking one argument at a time.

# Ruby supports currying out-of-the-box using Proc#curry.

# ✅ Example:
multiply = ->(x, y) { x * y }
curried = multiply.curry

double = curried.call(2)
puts double.call(5)   # => 10
puts double.call(10)  # => 20
# You "lock in" some arguments ahead of time and delay the rest — super useful for dynamic pipelines or reusable logic.

#  Closure + Currying Practice:

# Closure
def power(n)
  ->(x) { x ** n }
end

square = power(2)
cube = power(3)

puts square.call(4)  # => 16
puts cube.call(3)    # => 27

# Currying
add = ->(x, y, z) { x + y + z }
curried_add = add.curry

puts curried_add.call(10).call(5).call(2)  # => 17
