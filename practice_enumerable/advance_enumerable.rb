# Advanced Enumerable
# Convert array of hashes:

# people = [{name: "Alice"}, {name: "Bob"}, {name: "Charlie"}]
# → Extract only names.

# Flatten nested array: [1, [2, 3], [4, [5]]]

# Get the last even number in [1, 3, 4, 6, 7].

# Convert: [1, 2, 3] → {1=>"odd", 2=>"even", 3=>"odd"}

# Find the word with maximum length in ["hi", "hello", "world"].

# Get average of numbers [10, 20, 30, 40].

# 🧪 Bonus (More Real-World Style)

# users = [
#   {name: "Alice", age: 22},
#   {name: "Bob", age: 35},
#   {name: "Charlie", age: 29}
# ]
# Get names of users above age 25.

# Count how many words contain the letter "e" in ["red", "green", "blue", "yellow"].

# Convert array [1, 2, 3, 4, 5] to hash where key is number and value is square.

# From ["apple", "banana", "grape"], keep words that start and end with vowels.

# Find the most frequent number in [1, 2, 2, 3, 3, 3, 4, 4].


people = [{name: "Alice","age":12}, {name: "Bob","age":12}, {name: "Charlie","age":12}]
puts people.map { |p|  p[:name]}.join(",")



puts [1, [2, 3], [4, [5]]].flatten().inspect   
# we can flatten the nested array using flatten methid and also we can use flatten(1) to flatten the array upto 1 level

puts [1,2,3,4,5,7].select(&:even?).last

puts [1,2,3].map {|n| n.even? ? "even" : "odd"}.join(",")
puts [1, 2, 3].map { |n| [n, n.even? ? "even" : "odd"] }.to_h

puts ["hi", "hello", "worlds"].max_by(&:length)


nums = [10, 20, 30, 40]
puts nums.sum / nums.length.to_f


users = [
  {name: "Alice", age: 22},
  {name: "Bob", age: 35},
  {name: "Charlie", age: 29}
]

puts users.select { |u| u[:age] > 25 }.map { |u| u[:name] }


puts ["red", "green", "blue", "yellow","pink"].select{|w| w.include?("e")}.count


puts [1, 2, 3, 4, 5].map { |n| [n, n**2] }.to_h


# puts ["apple", "banana", "grape"].select {|w| w.start_with?(/[aeiou]/i) && w.end_with?(/[aeiou]/i)}

words = ["apple", "banana", "grape", "ice"]

puts words.select { |w| w.match?(/\A[aeiou]/i) && w.match?(/[aeiou]\z/i) }.join(" , ")


 arr = [1, 2, 2, 3, 3, 3, 4, 4]
puts arr.group_by(&:itself).max_by { |k, v| v.length }[0]