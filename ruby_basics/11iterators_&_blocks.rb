# 🔹 Blocks (do |var| ... end)

3.times do |i|
  puts "Hello #{i}"
end
# ✔ Used with iterators like each, map.

# 🔹 map (Transforms an Array)

numbers = [1, 2, 3, 4, 5]
squares = numbers.map { |num| num ** 2 }
puts squares
# ✔ Best for modifying arrays.

# 🔹 select (Filters an Array)

numbers = [1, 2, 3, 4, 5, 6]
evens = numbers.select { |num| num.even? }
puts evens
# ✔ Extracts elements that match a condition.



#  Industry Best Practices
# ✔ Use case over multiple if-elsif for readability.
# ✔ Use each and map instead of for loops.
# ✔ Avoid while if times or each can be used.
# ✔ Use break carefully to avoid infinite loops.
# ✔ Use blocks (do |var| ... end) for iterators.