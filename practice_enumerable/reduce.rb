# ➕ Reduce / Inject
# Get the sum of [1, 2, 3, 4, 5].

# Multiply all numbers in [2, 3, 4].

# Concatenate all strings in ["Ruby", "on", "Rails"].


puts [1, 2, 3, 4, 5].reduce (:+)
puts [1, 2, 3, 4, 5].reduce (:*)
puts ["Ruby", "on", "Rails"].reduce(:+)
