# ✅ Boolean Checks
# Check if all numbers in [2, 4, 6] are even.

# Check if any word in ["dog", "cat", "elephant"] has more than 5 letters.

# Check if none of [1, 3, 5] are even.


puts [2, 4, 6].all?(&:even?)

puts ["dog", "cat", "elephant"].any? { |w| w.length > 5 }

puts [1, 3, 5].none?(&:even?)